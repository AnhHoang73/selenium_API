# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Googlesearchwithitmscoaching' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'googlesearchwithitmscoaching' do
    @driver.get('https://www.google.com/')
    @driver.manage.window.resize_to(699, 728)
    @driver.find_element(:name, 'q').click
    @driver.find_element(:name, 'q').send_keys('itms coaching')
    @driver.find_element(:name, 'q').send_keys(:enter)
    sleep 2
    expect(@driver.title).to eq('itms coaching - Tìm với Google')
  end
end
