from selenium import webdriver
from selenium.webdriver.common.by import By
import pymysql

con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()
cur.execute("DELETE FROM `pc_case`")

browser = webdriver.Firefox()
main_link = "https://en.sharkoon.com/category/cases-power.aspx"
browser.get(main_link)
links = browser.find_element(By.CLASS_NAME, "container.sh_category").find_elements(By.CLASS_NAME, "category_title")
for link in links[0:3]:
    case_type = link.find_element(By.TAG_NAME, "a").text
    next_page = link.find_element(By.TAG_NAME, "a").get_attribute("href")
    temp_browser = webdriver.Firefox()
    temp_browser.get(next_page)
    groups = temp_browser.find_elements(By.CLASS_NAME, "container.sh_category")
    for group in groups:
        images = group.find_elements(By.TAG_NAME, "img")
        product_names = group.find_elements(By.CLASS_NAME, "product_title")
        for i in range(len(images)):
            query = "INSERT INTO `pc_case`(`image`,`form_factor`,`name`) VALUES (%s,%s,%s)"
            cur.execute(query, (images[i].get_attribute("src"), case_type, product_names[i].text))
    temp_browser.quit()
browser.quit()
con.commit()
cur.close()
con.close()

