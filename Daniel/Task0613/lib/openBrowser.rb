require 'capybara'
session = Capybara::Session.new(:selenium)
session.visit "http://google.com"

if session.has_content?("Google")
  puts "Hello World"
else
  puts "Good Bye World :("
  exit(-1)
end