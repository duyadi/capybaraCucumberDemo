require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'watir-webdriver'
require 'capybara/rspec'



Capybara.default_driver =:selenium

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.page.driver.browser.manage.window.maximize
Capybara.default_max_wait_time = 30
Capybara.ignore_hidden_elements = true
# Capybara.ignore_hidden_elements = false

SitePrism.configure do |config|
  config.use_implicit_waits = true
end


After do |scenario|
  if scenario.failed?
    if not File.directory?('screenshots')
      Dir::mkdir('screenshots')
    end
    # screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '').DateTime::strftime('%Y%m%d%H%M%S')}.png"
    screenshot = "./screenshots/FAILED_#{Time.now.strftime('%Y%m%d%H%M%S')}.png"
    save_screenshot(screenshot)
    embed screenshot, 'image/png'
  end
end

