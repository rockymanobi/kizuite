# Load the rails application
require File.expand_path('../application', __FILE__)
Dir[File.join(Rails.root, "lib", "extends", "*.rb")].each {|l| require l }

# Initialize the rails application
Study::Application.initialize!
