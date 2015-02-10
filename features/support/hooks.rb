Before do

Capybara.default_driver = :chrome

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :switches => ['--allow-running-insecure-content', '-no-sandbox'])
 
end 


page.driver.browser.manage.window.maximize

@environments = YAML.load_file("config/environments/default.yml")
require_all './Page Objects/*.rb'
$loginpage_object = Loginpage.new
$searchpage_object = Searchpage.new
$addproductpage_object = Addproductpage.new
end
 
#Run after each scenario
After do |scenario|
  #Check, scenario is failed?
  if(scenario.failed?)
         time = Time.now.strftime('%Y_%m_%d_%Y_%H_%M_%S_')
         name_of_scenario = time + scenario.name.gsub(/\s+/, "_").gsub("/","_")
         puts "Name of snapshot is #{name_of_scenario}"
         file_path = './Screenshots/' + name_of_scenario + '.png'
         page.driver.browser.save_screenshot file_path
         puts "Snapshot is taken"
    puts "#===========================================================#"
    puts "Scenario:: #{scenario.name}"
    puts "#===========================================================#"
  end
end

