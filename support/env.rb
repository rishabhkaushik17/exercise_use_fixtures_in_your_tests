require 'selenium-webdriver'
require 'page-object'
require 'data_magic'

DataMagic.yml_directory = '/Users/rishabhkaushik/Desktop/Vinsol/Web Automation/Exercise 5/features/data'
DataMagic.load 'form_data.yml'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.window.maximize
  @browser.manage.timeouts.implicit_wait = 10
end

After do |scenario|
  @browser.quit
end