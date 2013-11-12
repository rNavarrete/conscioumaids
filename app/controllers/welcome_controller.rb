class WelcomeController < ApplicationController
  def index
  	@lead = Lead.new
  end
  def prices
  	@lead = Lead.new  	
  end	
end
