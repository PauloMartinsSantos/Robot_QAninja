from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()
driver.get("https://training-wheels-protocol.herokuapp.com/")
assert "Training Wheels Protocol" in driver.title
driver.close()

##Solução para acessar uma página web e validar o título com python.