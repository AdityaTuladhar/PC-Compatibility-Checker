from selenium import webdriver
from selenium.webdriver.common.by import By
import time
import random
import requests
from bs4 import BeautifulSoup
import pymysql
import time

con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()

browser = webdriver.Firefox()
browser.get("https://videocardz.net/")
major_brands =[x.find_element(By.TAG_NAME, "a") for x in browser.find_element(By.ID, "sidebar-left-manufacturers").find_elements(By.TAG_NAME, "li")]
links_to_major_brands = [brands.get_attribute("href") for brands in major_brands]

updated_card_links = []
with open("graphicscard_db/all_cards_link.txt", "r") as f:
	cards_spec_links = f.read().split(",")
	cards_spec_links.remove("")
	f.close()

for link in links_to_major_brands:
	browser.get(link)
	series_blocks = browser.find_elements(By.CLASS_NAME, "block5")
	for x in series_blocks:
		if x.find_element(By.CLASS_NAME, "subblockheader").text in ["Gaming Desktop", "GeForce Series", "Radeon Series"]:
			for series in x.find_elements(By.TAG_NAME, "a"):
				temp_browser = webdriver.Firefox()
				temp_browser.get(series.get_attribute("href"))
				temp_links = temp_browser.find_element(By.CLASS_NAME, "page-database-table").find_elements(By.TAG_NAME, "a")
				for temp_link in temp_links:
					if temp_link.get_attribute("href") not in cards_spec_links:
						updated_card_links.append(temp_link.get_attribute("href"))
				temp_browser.close()
	random_sleep_time = random.uniform(1, 3)
	time.sleep(random_sleep_time)

if len(updated_card_links) != 0:
	with open("graphicscard_db/all_cards_link.txt", "a") as f:
		f.write(",".join(updated_card_links) + ",")
		f.close()

for link in updated_card_links:
	overview = {}
	gpu = {}
	clocks = {}
	memory_configuration = {}
	physical = {}
	display_outputs = {}
	successful = False
	while not successful:
		try:
			page = requests.get(link, headers={'User-Agent': 'Mozilla/5.0'})
			if page.status_code == 200:
				successful = True
			else:
				print("Unsuccessful attempt, trying after 1 sec")
				time.sleep(1)
		except:
			print("Unsuccesful: " + link)
	soup = BeautifulSoup(page.content, "html.parser")
	if len(soup.find_all(id="AGAL")) == 0:
		print(link)
		continue
	name = soup.find(id="CARDNAME").text
	picture = soup.find(id="AGAL").get("data-bg") if soup.find(id="AGAL").get("data-bg") is not None else "Unavailable"
	blocks = soup.find_all(class_="GROUPBOX")
	for block in blocks:
		if len(block.find_all(class_="header")) != 1:
			all_divs = block.find_all("div", recursive=False)
			values = []
			temp_num = 0
			start = 1
			first_time = True
			for div in all_divs:
				if div["class"][0] == "header" and not first_time:
					values.append({"start": start, "stop": temp_num})
					temp_num += 1
					start = temp_num + 1
				elif div["class"] != "header":
					first_time = False
					temp_num += 1
			values.append({"start": start, "stop": temp_num})
			heads = [x.text for x in block.find_all(class_="header")]
			for index in range(len(heads)):
				if heads[index] == "Physical":
					for div in range(values[index]["start"], values[index]["stop"]):
						physical[all_divs[div].find(class_="title").text] = all_divs[div].find(class_="value").text
				elif heads[index] == "Display Outputs":
					for div in range(values[index]["start"], values[index]["stop"]):
						display_outputs[all_divs[div].find(class_="title").text] = all_divs[div].find(class_="value").text
		else:
			if block.find(class_="header").text == "Overview":
				overview_titles = [x.text for x in block.find_all(class_="title")]
				overview_values = [x.text for x in block.find_all(class_="value")]
				for i in range(len(overview_titles)):
					overview[overview_titles[i]] = overview_values[i]
			elif block.find(class_="header").text == "Graphics Processing Unit":
				gpu_titles = [x.text for x in block.find_all(class_="title")]
				gpu_values = [x.text for x in block.find_all(class_="value")]
				for i in range(len(gpu_titles)):
					gpu[gpu_titles[i]] = gpu_values[i]
			elif block.find(class_="header").text == "Clocks":
				clocks_titles = [x.text for x in block.find_all(class_="title")]
				clocks_values = [x.text for x in block.find_all(class_="value")]
				for i in range(len(clocks_titles)):
					clocks[clocks_titles[i]] = clocks_values[i]
			elif block.find(class_="header").text == "Memory Configuration":
				memory_configuration_titles = [x.text for x in block.find_all(class_="title")]
				memory_configuration_values = [x.text for x in block.find_all(class_="value")]
				for i in range(len(memory_configuration_titles)):
					memory_configuration[memory_configuration_titles[i]] = memory_configuration_values[i]
			elif block.find(class_="header").text == "Physical":
				physical_titles = [x.text for x in block.find_all(class_="title")]
				physical_values = [x.text for x in block.find_all(class_="value")]
				for i in range(len(physical_titles)):
					physical[physical_titles[i]] = physical_values[i]
			elif block.find(class_="header").text == "Display Outputs":
				display_outputs_titles = [x.text for x in block.find_all(class_="title")]
				display_outputs_values = [x.text for x in block.find_all(class_="value")]
				for i in range(len(display_outputs_titles)):
					display_outputs[display_outputs_titles[i]] = display_outputs_values[i]

	query = "INSERT INTO `graphics_card`(`name`,`overview`,`gpu`,`clocks`,`memory_configuration`,`physical`,`display_outputs`,`picture`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
	cur.execute(query, (name, str(overview), str(gpu), str(clocks), str(memory_configuration), str(physical), str(display_outputs), picture))
	con.commit()
cur.close()
con.close()
