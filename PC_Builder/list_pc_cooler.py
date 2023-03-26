from selenium import webdriver
from selenium.webdriver.common.by import By
import time
import pymysql

con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()
cur.execute("DELETE FROM `pc_cooler`")

browser = webdriver.Firefox()
browser.get("https://thegamingstuff.com/database/cpu-air-cooler-database/")
while True:
	table_load = browser.find_elements(By.TAG_NAME, "tbody")
	if len(table_load) != 0:		
		break
	else:
		time.sleep(5)

pages_link = browser.find_element(By.TAG_NAME,"tfoot").find_elements(By.TAG_NAME, "a")
for link in pages_link[2:-2]:
	link.click()
	time.sleep(3)
	table_rows = browser.find_element(By.TAG_NAME, "tbody").find_elements(By.TAG_NAME, "tr")
	for row in table_rows:
		columns = row.find_elements(By.TAG_NAME, "td")
		image = columns[0].find_element(By.TAG_NAME, "img").get_attribute("src")
		brand = columns[1].text
		model = columns[2].text
		height = columns[3].text
		width = columns[4].text
		depth = columns[5].text
		amd_am4 = columns[8].text
		amd_tr4_sp3 = columns[9].text
		lga_115x_1200 = columns[10].text
		lga_2006 = columns[11].text
			query = "INSERT INTO `pc_cooler`(`image`,`brand`,`model`,`height`,`width`,`depth`,`AMD AM4`,`AMD TR4, SP3`,`LGA 115X, 1200`,`LGA 2066`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
			cur.execute(query, (image, brand, model, height, width, depth, amd_am4, amd_tr4_sp3, lga_115x_1200, lga_2006))
browser.close()
con.commit()
cur.close()
con.close()
