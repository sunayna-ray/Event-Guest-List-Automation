# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'sheltered-forest-93990.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}