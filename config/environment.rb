# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.2.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.gem "paperclip"

  config.time_zone = 'UTC'

  config.action_controller.session = {
    :session_key => '_dogs_session',
    :secret      => '28a5a490fd04638253003da156089d448b781e469e432896d56a9d7e36946de822a059c040ab497c175095ba8c8103bb42ee6a1458e63f17a138373e5a352d0f'
  }

end
