class WelcomeController < ApplicationController
  def index
  	@lead = Lead.new
  end
end
