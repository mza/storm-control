class HomeController < ApplicationController
  
  def index
    @cruise_control = CruiseControl.new
    @refresh = setting_for :refresh
  end
  
end
