class WelcomeController < ApplicationController
	protect_from_forgery except: :create

  def index
  	@lead = Lead.new
  end
  def prices
  	@lead = Lead.new  	
  end	
  def confirmation
  end

  def create
  	@lead = Lead.new(lead_params)
  end

  def area
  end  

  def faqs
  end
      
  private
  
  def lead_params
    params.require(:lead).permit(:email, :name, :phone)
  end	
end