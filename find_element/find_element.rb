require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
search_bar  = driver.find_element(name: 'q')
puts search_bar
.send_key "foo"
sleep 2
driver.quit