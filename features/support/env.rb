require 'capybara/cucumber'
require 'selenium-webdriver'
require 'page-object'
require 'test-unit'
#This require is for the Test::Unit::Assertions namespace.
require 'test/unit/assertions'
require 'yaml'
require 'tiny_tds'
require 'rubygems'
require 'site_prism'
require 'require_all'


def delete_from_db(sql)
  result = $client.execute(sql)
  result.do
end

def insert_into_db(sql)
  result = $client.execute(sql)
  result.insert
end

def update_db(sql)
  result = $client.execute(sql)
  result.do
end


def select_one_field_from_db(sql)
  result = $client.execute(sql)
  records = result.each(:symbolize_keys => true, :as => :array)
  records.each do |rowset|
  return rowset[0]
  end
end

def wait_until(timeout = Capybara.default_wait_time)
  Capybara.timeout(timeout,driver) { chrome }
end

#Add our Test-Unit assertion methods into Cucumber's world, this allows it to be used from within features run by cucumber.
World Test::Unit::Assertions

