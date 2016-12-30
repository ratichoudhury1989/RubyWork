require 'watir'
require 'watir-webdriver' 
require 'rubygems'
require 'selenium-webdriver'


Selenium::WebDriver::Chrome.driver_path="D:/RubyDemo/watier_framework/chromedriver_win32/chromedriver.exe"

driver = Watir::Browser.new :chrome

puts "Begining the test"

puts "opening nightly.capillary.in"
driver.goto "https://nightly.capillary.in"

puts "Typing username"
driver.text_field(:id , "login_user").set "kmehra@capillary.co.in"

puts "Typing password"
driver.text_field(:id , "login_cred").set "123"

puts "click on login button"
driver.button(:id , "c-login-btn").click

if  driver.title == "Capillary InTouch (Capillary InTouch软件) >> WorkBench"
	puts "PASS"
else
	puts "FAIL"
end

puts "Test Done.Closing the browser"
driver.close