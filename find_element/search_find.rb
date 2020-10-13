require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.get('https://www.google.com/') 
driver.manage.window.maximize
#find name element and search with 'itms coaching'
search = driver.find_element(name: 'q')
search.send_keys('kenh14')
#find the xpath button and click it
search-bar = driver.find_element(:xpath, "//div[@class='a4bIc']//input[@name='q']")
serach-bar.click
puts driver.title
sleep 3
driver.quit