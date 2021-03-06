begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'yaml'
require 'pathname'
require 'capybara/poltergeist' 

def load_app_config_file(filename)
  config_file = find_config_file(filename)
  config = YAML.load_file(config_file)
  return config
end
def find_config_file(filename)
  root = Pathname.pwd
  while not root.root?
    root.find do |path|
      if path.file? and path.basename.to_s == filename
        return path.to_s
      end
    end
    root = root.parent
  end
  raise 'Configuration file ' #{filename}' not found!'
end

AfterConfiguration do
#Load global configuration parameters
    configuration = load_app_config_file('env.yml')
    # configure capybara
    config_capybara = configuration['capybara']
    default_host = config_capybara ['default']['host']
    default_wait = config_capybara ['default']['wait_time'].to_i
    drivers = config_capybara ['drivers']
Capybara.configure do |config|
    #Capybara.default_driver = :selenium
	Capybara.default_driver = :poltergeist
    Capybara.run_server = false
    Capybara.app_host = default_host
    Capybara.default_max_wait_time = default_wait
	#Capybara.register_driver :selenium do |app|
	Capybara.register_driver :postergeist do |app|
     #Capybara::Selenium::Driver.new(app, :browser => :chrome)
	 options = {
        :js_errors => true,
        :timeout => 120,
        :debug => false,
        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
        :inspector => true,
    }
    Capybara::Poltergeist::Driver.new(app, options)

    end


end
end


