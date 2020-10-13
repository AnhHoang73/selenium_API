require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
 driver.get 'https://itmscoaching.com'
 driver.save_screenshot('./itmscoaching.png')
 driver.quit
 
end