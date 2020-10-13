require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://itmscoaching.herokuapp.com/autocomplete"
autocomplete = driver.find_element(id: 'autocomplete')
autocomplete.send_keys('234 Cộng Hòa, phường 12, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam')
driver.managet.timeouts.implicit_wait = 2

autocomplete_result = driver.find_element(class: 'pac-item')
 
autocomplete_result.click

 

