require "selenium -webdriver"

require "rspec"
$first_name = 'itms'#variable ruby
$last_name = 'coaching'
$job_title = 'qa'
$date = '05/25/2025'
$expect_banner_text = 'the form was successfully  submitted!'
describe "automation a form " do
 it "sumits a form" do
  driver = Selenium::WebDriver.for :chrome
  driver.navigate.to "https://itmscoaching.herokuapp.com/form"
  driver.find_element(id: 'first-name').send_keys($first_name)
  driver.find_element(id: 'last-name').send_keys($last_name)
  driver.find_element(id: 'job-title').send_keys($job_title)
  driver.find_element(id: 'radio-button-2').click
  driver.find_element(id: 'check-box-2').click
  driver.find_element(css: 'option[value]-2').click
  driver.find_element(id: 'datepicket').send_keys($date)
  driver.find_element(id: 'datepicket').send_keys :return
   driver.find_element(css: '.btn-btn-lg.btn-primary').click
   wait = Selenium::WebDriver::Wait.new(timeout:10) #seconds
   wait.until{driver.find_element{class: 'alert'}}
   expect{driver.find_element{class: 'alert'}.text}.to.eql{'the form was successfully submited'}
   sleep 10
   driver.quit
  end
   
  end
  

  driver
 
end
