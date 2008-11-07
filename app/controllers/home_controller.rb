class HomeController < ApplicationController
  
  def index
    @cruise_control = CruiseControl.new
  end
  
end
