import requests
from bs4 import BeautifulSoup
import pymysql

con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()
cur.execute("DROP TABLE `intel_cpu`")
cur.execute("CREATE TABLE `intel_cpu`(`id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,`model` varchar(100),`family_name` varchar(100),`cpu_socket` varchar(100),`pci_express_version` varchar(100),`default_tdp` varchar(100),`system_memory_type` varchar(100))")

links = []

page = requests.get("https://www.intel.com/content/www/us/en/products/details/processors.html")
soup = BeautifulSoup(page.content, "html.parser")
soup = soup.find_all(class_="panel-body")
for s in soup:
    temp = s.find_all(class_="group-title has-name")
    if len(temp) > 1:
        for div in temp[1::]:
            links.append("https://www.intel.com"+div.find("a").get("href")[0:-5]+"/products.html")
    else:
        links.append("https://www.intel.com"+temp[0].find("a").get("href")[0:-5]+"/products.html")

specific_links = []

for link in links:
    page = requests.get(link)
    soup = BeautifulSoup(page.content, "html.parser")
    soup = soup.find_all(class_="add-compare-wrap")
    for s in soup:
        url = "https://www.intel.com"+s.find("a").get("href")
        if url not in specific_links:
            specific_links.append(url)

for link in specific_links:
    specification_page = requests.get(link)
    spec_soup = BeautifulSoup(specification_page.content, "html.parser")
    row_spec_soup = spec_soup.find_all(class_="row tech-section-row")
    try:
        soup_temp = row_spec_soup[2].find(class_="col-xs-6 col-lg-6 tech-data")
    except IndexError:
        continue
    soup_temp = soup_temp.find("span")
    if soup_temp.text in ['Server', 'Workstation', 'Desktop']:
        if spec_soup.find(id="specs-1-0-6").find(class_="row tech-section-row").find(class_="col-xs-6 col-lg-6 tech-label").find("span").text == "Sockets Supported":
            essentials = {}
            cpu_specifications = {}
            memory_specifications = {}
            expansion_options = {}
            package_expansions = {}

            num_essentials = 0
            num_cpu_specifications = 0
            num_memory_specifications = 0
            num_expansion_options = 0
            num_package_expansions = 0

            url_num = 0
            heading_soup = spec_soup.find(class_="nav").find_all("a")
            for x in heading_soup:
                if x.text == "Essentials":
                    num_essentials = url_num
                elif x.text == "CPU Specifications":
                    num_cpu_specifications = url_num
                elif x.text == "Memory Specifications":
                    num_memory_specifications = url_num
                elif x.text == "Expansion Options":
                    num_expansion_options = url_num
                elif x.text == "Package Specifications":
                    num_package_expansions = url_num
                url_num += 1

            for x in [num_essentials, num_cpu_specifications, num_memory_specifications, num_expansion_options, num_package_expansions]:
                i = "specs-1-0-"+str(x)
                label = [v.find("span").text for v in spec_soup.find(id=i).find_all(class_="col-xs-6 col-lg-6 tech-label")]
                value = [v.find("span").text if v.find("span")!=None else v.find("a").text for v in spec_soup.find(id=i).find_all(class_="col-xs-6 col-lg-6 tech-data")]
                for num in range(0, len(label)):
                    if x == num_essentials:
                        essentials[label[num]] = value[num]
                    elif x == num_cpu_specifications:
                        cpu_specifications[label[num]] = value[num]
                    elif x == num_memory_specifications:
                        memory_specifications[label[num]] = value[num]
                    elif x == num_expansion_options:
                        expansion_options[label[num]] = value[num]
                    else:
                        package_expansions[label[num]] = value[num]
            query = "INSERT INTO `intel_cpu` (`model`,`family_name`,`cpu_socket`,`pci_express_version`,`default_tdp`,`system_memory_type`) VALUES (%s,%s,%s,%s,%s,%s)"
            if "TDP" in cpu_specifications.keys():
                power_consumed = cpu_specifications["TDP"]
            elif "Maximum Turbo Power" in cpu_specifications.keys():
                power_consumed = cpu_specifications["Maximum Turbo Power"]
            else:
                power_consumed = cpu_specifications["Processor Base Power"]
            cur.execute(query, (essentials["Processor Number"], essentials["Product Collection"], package_expansions["Sockets Supported"], expansion_options["PCI Express Revision"], power_consumed, memory_specifications["Memory Types"]))
con.commit()
cur.close()
con.close()
