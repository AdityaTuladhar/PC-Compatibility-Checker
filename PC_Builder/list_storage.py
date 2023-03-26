from selenium import webdriver
from selenium.webdriver.common.by import By
import time
import pymysql

con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()
cur.execute("DELETE FROM `pc_storage`")

continue_process = True
page_number = 1
links = []
while continue_process:
	browser = webdriver.Firefox()
	browser.get("https://www.westerndigital.com/c/internal-drives?page=" + str(page_number))
	time.sleep(5)
	main_div = browser.find_element(By.ID, "plpProductDiv").find_elements(By.CLASS_NAME, "flex.flex-col.h-auto")
	page_number += 1
	if len(main_div) == 0:
		continue_process = False
	else:
		for div in main_div:
			links.append(div.get_attribute("href"))
	browser.quit()

for link in links:
	temp_browser = webdriver.Firefox()
	temp_browser.get(link)
	time.sleep(5)
	name = temp_browser.find_element(By.CLASS_NAME, "inline").text.split("\n")[1]
	image = temp_browser.find_element(By.CLASS_NAME, "mx-auto.img-fluid").get_attribute("src")
	specs_divs = temp_browser.find_element(By.CLASS_NAME, "product-tech-specs-store").find_elements(By.CLASS_NAME, "target-even-odd.border-b.border-grey-light.flex.items-center.pb-3.pt-4.pl-7.ng-scope")
	capacity = ""
	interface = ""
	connector = ""
	for specs_div in specs_divs:
		title = specs_div.find_element(By.CLASS_NAME, "flex-1.text-sm.inheritPara.ng-binding").text.strip()
		if title == "Capacity":
			capacity = specs_div.find_element(By.CLASS_NAME, "flex-1.inheritPara.text-sm.leading-tight.ng-binding").text
		elif title == "Interface":
			interface = specs_div.find_element(By.CLASS_NAME, "flex-1.inheritPara.text-sm.leading-tight.ng-binding").text
		elif title == "Connector":
			connector = specs_div.find_element(By.CLASS_NAME, "flex-1.inheritPara.text-sm.leading-tight.ng-binding").text
	query = "INSERT INTO `pc_storage`(`name`,`image`,`capacity`,`interface`,`connector`) VALUES (%s,%s,%s,%s,%s)"
	cur.execute(query, (name, image, capacity, interface, connector))
	temp_browser.quit()

con.commit()
cur.close()
con.close()
