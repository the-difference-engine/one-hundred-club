# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Specify ActionMailer settings to point to SendGrid's servers
ActionMailer::Base.smtp_settings = {
  :user_name => ENV["USERNAME"],
  :password => ENV["PASSWORD"],
  :domain => 'yourdomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}