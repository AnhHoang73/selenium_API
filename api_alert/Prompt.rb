require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to"https://www.seleniumeasy.com/test/javascript-alert-box-demo.html"
alert_button = driver.find_element(xpath:"//button[contains(text(),'Click for")
alert_button.click
# Type a message
driver.switch_to.alert.send_keys("selenium")
sleep 2
driver.switch_to.alert.accept