from gevent import monkey as curious_george
import grequests
import pymysql
import requests
from bs4 import BeautifulSoup

curious_george.patch_all(thread=False, select=False)
con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()
cur.execute("DROP TABLE `motherboard`")
cur.execute("CREATE TABLE `motherboard`(`id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,`image` varchar(1000), `name` varchar(1000),`general information` varchar(1000), `internal connection` varchar(1000), `expansion slots` varchar(1000), `memory` varchar(1000), `m.2 slot` varchar(1000))")

results = [0]
i = 1
all_results = []
while True:
    URL = "https://motherboarddb.com/motherboards/ajax/table/?dt=table&page=" + str(i)
    page = requests.get(URL)

    soup = BeautifulSoup(page.content, "html.parser")

    temp = soup.find("tbody")
    tr_datas = temp.find_all("tr")
    if "https://motherboarddb.com/"+temp.find("a").get("href") == results[0]:
        break
    results = ["https://motherboarddb.com/"+li.get("href") for li in temp.find_all("a")]
    for result in results:
        all_results.append(result)
    i += 1

while len(all_results) != 0:
    for r in grequests.map([grequests.get(link) for link in all_results], size=45):
        if r.status_code == 200:
            all_results.remove(r.url)
            specs_soup = BeautifulSoup(r.content, "html.parser")
            image = "https://motherboarddb.com/"+specs_soup.find(class_="img-fluid").get("src")
            motherboard_name = specs_soup.find("h1").text
            general_information = {}
            internal_information = {}
            expansion_slots = {}
            memory = {}
            m2_slot = {}
            specs_cards = specs_soup.find_all(class_="card")
            for specs_card in specs_cards:
                specs_heading = specs_card.find(class_="card-header").text
                if specs_heading == "General Information":
                    general_keys = specs_card.find_all("th")
                    general_values = specs_card.find_all("a")
                    for keys in range(len(general_values)):
                        general_information[general_keys[keys].text] = general_values[keys].text
                elif specs_heading == "Internal Connections":
                    internal_connection_keys = specs_card.find_all("h6")
                    internal_connection_values = [",".join([y.text for y in x.find_all("li")]) for x in
                                                  specs_card.find_all("ul")]
                    for keys in range(len(internal_connection_keys)):
                        internal_information[internal_connection_keys[keys].text] = internal_connection_values[keys]
                elif specs_heading == "Expansion Slots":
                    expansion_slots_keys = specs_card.find_all("h6")
                    expansion_slots_values = []
                    temp = []
                    for i in specs_card.find_all("li"):
                        temp.append(i.text)
                    expansion_slots_values.append(",".join(temp))
                    temp = []
                    for i in range(0, len(specs_card.find_all("td")), 2):
                        temp.append(specs_card.find_all("td")[i].text + ' = ' + specs_card.find_all("td")[i + 1].text)
                    expansion_slots_values.append(",".join(temp))
                    for keys in range(len(expansion_slots_values)):
                        expansion_slots[expansion_slots_keys[keys].text] = expansion_slots_values[keys]
                elif specs_heading == "Memory":
                    memory_keys = [x.text for x in specs_card.find_all("th")]
                    memory_keys.append('slots')
                    memory_values = [x.text for x in specs_card.find_all("td")]
                    memory_values.append(specs_card.find("b").text)
                    for keys in range(len(memory_keys)):
                        memory[memory_keys[keys]] = memory_values[keys]
                elif specs_heading == "M.2 Slots":
                    m2_keys = [x.text for x in specs_card.find_all("th")]
                    m2_values = [x.text for x in specs_card.find_all("td")]
                    for keys in range(len(m2_keys)):
                        m2_slot[m2_keys[keys]] = m2_values[keys]
            query = "INSERT INTO `motherboard`(`image`,`name`,`general information`,`internal connection`,`expansion slots`,`memory`,`m.2 slot`) VALUES (%s,%s,%s,%s,%s,%s,%s)"
            cur.execute(query, (image, motherboard_name, str(general_information), str(internal_information), str(expansion_slots), str(memory), str(m2_slot)))

con.commit()
cur.close()
con.close()

