require 'rubygems'
require 'selenium-webdriver'
browser = Selenium::WebDriver.for :chrome
html_file = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/test.html"
browser.get "file:///" + html_file
#add text to a text box 
textbox = browser.find_element(:name, "searchbox")
textbox.send_keys("Information")
sleep 2
browser.quit