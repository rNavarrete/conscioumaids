class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper :all
  protect_from_forgery with: :exception
   before_filter :prepare_for_mobile
  
  private

  def mobile_device?
    session.has_key?(:mobile) ? session[:mobile] : request.user_agent =~ /Mobile|webOS/
  end

  helper_method :mobile_device?


  def device_type
    request.env['mobvious.device_type']
  end

  helper_method :device_type




  def prepare_for_mobile
    if request.format == 'text/html'
      case File.extname(URI.parse(request.fullpath).path)
          when '.html'
            session[:mobile] = false
          when '.mobile'
            session[:mobile] = true
          end
          request.format = :mobile if mobile_device?
          request.format = :tablet if device_type == :tablet
      end
  end
end