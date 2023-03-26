from selenium import webdriver
from selenium.webdriver.common.by import By
import time
import pymysql

con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()
cur.execute("DELETE FROM `pc_ram`")

browser = webdriver.Firefox()
browser.get("https://www.xpg.com/us/xpg/category/computer-memory")
lists = browser.find_elements(By.CLASS_NAME, "product-item.xpg")
browser.quit()
for i in range(len(lists)):
    notFoundPage = True
    while notFoundPage:
        browser = webdriver.Firefox()
        browser.get("https://www.xpg.com/us/xpg/category/computer-memory")
        list_items = browser.find_elements(By.CLASS_NAME, "product-item.xpg")
        if len(list_items) == 0:
            browser.quit()
        else:
            list_item = list_items[i]
            notFoundPage = False
    image = list_item.find_element(By.CLASS_NAME, "product-img").find_element(By.TAG_NAME, "img").get_attribute("src")
    product_name = list_item.find_element(By.CLASS_NAME, "product-name").text
    list_item.find_element(By.CLASS_NAME, "learn-more").click()
    time.sleep(3)
    buttons = browser.find_elements(By.CLASS_NAME, "tabs__item.default-tabs__item-black")
    buttons[1].click()
    specs = browser.find_elements(By.CLASS_NAME, "specification-row.dark-border")
    memory_type = specs[0].find_element(By.TAG_NAME, "p").text
    form_factor = specs[1].find_element(By.TAG_NAME, "p").text
    capacity = specs[3].find_element(By.TAG_NAME, "p").text
    speed = specs[4].find_element(By.TAG_NAME, "p").text
    query = "INSERT INTO `pc_ram`(`image`,`product_name`,`memory_type`,`form_factor`,`capacity`,`speed`) VALUES (%s,%s,%s,%s,%s,%s)"
    cur.execute(query, (image, product_name, memory_type, form_factor, capacity, speed))
    browser.quit()
con.commit()
cur.close()
con.close()
