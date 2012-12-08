# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Invoice::Application.initialize!

Date::DATE_FORMATS[:default] = "%d.%m.%Y"
Date::DATE_FORMATS[:db] = "%d.%m.%Y"
Time::DATE_FORMATS[:default] = "%d.%m.%Y %H:%M"