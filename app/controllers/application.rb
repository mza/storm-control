# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'b0a361dffa137f84136b01093ca14bf7'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
    
  def settings
    SETTINGS
  end
  
  def setting_for(key)
    SETTINGS[key]
  end
  
  def self.setting_for(key)
    SETTINGS[key]
  end

  SETTINGS = YAML.load(File.open("#{Rails.root}/config/cruise.yml")).symbolize_keys
  CruiseControl.url = setting_for :url 
  
end
