require 'minitest/autorun'
require "selenium-webdriver"
require 'capybara'
require 'site_prism'
require 'require_all'


require_all File.dirname(__FILE__) + '/page_objects'

Capybara.javascript_driver = :webkit
Capybara.default_driver = :selenium
Capybara.default_wait_time = 20

Capybara.register_driver :selenium do |app|
    http_client = Selenium::WebDriver::Remote::Http::Default.new
    http_client.timeout = 200
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :http_client => http_client)
end

Capybara.run_server = false
Capybara.app_host = 'http://agiletesters.com.br'

class AcceptanceTestSetup < Minitest::Test
  include Capybara::DSL
  extend Minitest::Spec::DSL
  def setup
    puts "uuhuuu"
  end
end