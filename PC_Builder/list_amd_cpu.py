import pymysql
import csv
import os
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.options import Options

os.remove("D:\\pythonProject\\PC_Builder\\amd_cpu_db\\tableExport.csv")

profile = Options()
profile.set_preference("browser.download.folderList", 2)
profile.set_preference("browser.download.manager.showWhenStarting", False)
profile.set_preference("browser.download.dir", "D:\\pythonProject\\PC_Builder\\amd_cpu_db")
profile.set_preference("browser.helperApps.neverAsk.saveToDisk", "text/csv")

browser = webdriver.Firefox(options=profile)
browser.get("https://www.amd.com/en/products/specifications/processors")
drop_down = browser.find_element(By.CLASS_NAME, "export.btn-group").find_element(By.CLASS_NAME, "btn.btn-default.dropdown-toggle")
drop_down.click()
download_csv = browser.find_element(By.LINK_TEXT, "CSV/Excel")
download_csv.click()
browser.quit()

con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()
cur.execute("DROP TABLE `amd_cpu`")
cur.execute("CREATE TABLE `amd_cpu`(`id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,`model` varchar(100),`family_name` varchar(100),`cpu_socket` varchar(100),`pci_express_version` varchar(100),`default_tdp` varchar(100),`system_memory_type` varchar(100))")

with open("D:\\pythonProject\\PC_Builder\\amd_cpu_db\\tableExport.csv", "r") as csv_file:
    csv_reader = csv.DictReader(csv_file)
    for line in csv_reader:
        if line["Platform"] == "Desktop":
            query = "INSERT INTO `amd_cpu` (`model`,`family_name`,`cpu_socket`,`pci_express_version`,`default_tdp`,`system_memory_type`) VALUES (%s,%s,%s,%s,%s,%s)"
            cur.execute(query, (line["Model"].strip('""'), line["Family"].strip('""'), line["CPU Socket"].strip('""'), line["PCI ExpressÂ® Version"].strip('""'), line["Default TDP"].strip('""'), line["System Memory Type"].strip('""')))
    con.commit()
    csv_file.close()
cur.close()
con.close()




