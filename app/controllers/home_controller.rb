class HomeController < ApplicationController
  
  def index
    @cruise_control = CruiseControl.new
    @refresh = setting_for :refresh
    @location = setting_for :location
  end
  
end
