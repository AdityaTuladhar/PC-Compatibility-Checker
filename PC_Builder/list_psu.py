from selenium import webdriver
from selenium.webdriver.common.by import By
import pymysql

con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()
cur.execute("DELETE FROM `psu`")

browser = webdriver.Firefox()
browser.get("http://www.realhardtechx.com/index_archivos/PSUReviewDatabase.html")
temp = browser.find_element(By.ID, "apDiv15").find_elements(By.TAG_NAME, "a")
for t in temp:
	if len(t.find_elements(By.TAG_NAME, "img")) != 0:
		company_name = t.find_element(By.TAG_NAME, "img").get_attribute("alt")
		temp_browser = webdriver.Firefox()
		temp_browser.get(t.get_attribute("href"))
		all_tables = temp_browser.find_elements(By.TAG_NAME, "table")
		for table in all_tables:
			if table.get_attribute("v:shapes") is not None:
				rows = table.find_elements(By.TAG_NAME, "tr")
				if rows[0].find_element(By.TAG_NAME, "td").text in [" RHTX", ", 3 RHTX", "RHTX"]:
					for index, row in enumerate(rows[2::]):
						index += 2
						if row.find_element(By.TAG_NAME, "td").get_attribute("bgcolor") == "#7D7396":
							series = row.find_element(By.TAG_NAME, "td").text
							model = row.find_elements(By.TAG_NAME, "td")[1].text
							max_power = row.find_elements(By.TAG_NAME, "td")[2].find_element(By.TAG_NAME, "p").text
							pcie_6_pin = row.find_elements(By.TAG_NAME, "td")[5].text
							i = 0
							pcie_8_pin = ""
							while i < len(rows[index + 1].find_elements(By.TAG_NAME, "td")):
								temp = rows[index + 1].find_elements(By.TAG_NAME, "td")[i].text.strip()
								color = rows[index + 1].find_elements(By.TAG_NAME, "td")[i].get_attribute("bgcolor")
								if temp.isnumeric() and color == "#CCC2E4":
									pcie_8_pin = temp
									break
								else:
									i += 1
							query = "INSERT INTO `psu`(`company_name`,`series`,`model`,`pcie_pin_6/8`,`max_power`) VALUES (%s,%s,%s,%s,%s)"
							cur.execute(query, (company_name, series, model, pcie_6_pin+"/"+pcie_8_pin, max_power))
						else:
							if index % 2 == 0:
								model = row.find_element(By.TAG_NAME, "td").text
								max_power = row.find_elements(By.TAG_NAME, "td")[1].find_element(By.TAG_NAME, "p").text
								pcie_6_pin = row.find_elements(By.TAG_NAME, "td")[4].text
								i = 0
								pcie_8_pin = ""
								while i < len(rows[index + 1].find_elements(By.TAG_NAME, "td")):
									temp = rows[index + 1].find_elements(By.TAG_NAME, "td")[i].text.strip()
									color = rows[index + 1].find_elements(By.TAG_NAME, "td")[i].get_attribute("bgcolor")
									if temp.isnumeric() and color == "#CCC2E4":
										pcie_8_pin = temp
										break
									else:
										i += 1
								query = "INSERT INTO `psu`(`company_name`,`series`,`model`,`pcie_pin_6/8`,`max_power`) VALUES (%s,%s,%s,%s,%s)"
								cur.execute(query,(company_name, series, model, pcie_6_pin + "/" + pcie_8_pin, max_power))
				else:
					series = rows[0].find_element(By.TAG_NAME, "td").text
					for index, row in enumerate(rows[2::]):
						if index % 2 == 0:
							index += 2
							model = row.find_element(By.TAG_NAME, "td").text
							max_power = row.find_elements(By.TAG_NAME, "td")[1].find_element(By.TAG_NAME, "p").text
							pcie_6_pin = row.find_elements(By.TAG_NAME, "td")[4].text
							i = 0
							pcie_8_pin = ""
							while i < len(rows[index + 1].find_elements(By.TAG_NAME, "td")):
								temp = rows[index + 1].find_elements(By.TAG_NAME, "td")[i].text.strip()
								color = rows[index + 1].find_elements(By.TAG_NAME, "td")[i].get_attribute("bgcolor")
								if temp.isnumeric() and color == "#CCC2E4":
									pcie_8_pin = temp
									break
								else:
									i += 1
							query = "INSERT INTO `psu`(`company_name`,`series`,`model`,`pcie_pin_6/8`,`max_power`) VALUES (%s,%s,%s,%s,%s)"
							cur.execute(query, (company_name, series, model, pcie_6_pin + "/" + pcie_8_pin, max_power))

		temp_browser.quit()
browser.quit()
con.commit()
cur.close()
con.close()
