class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  
  def set_locale
    I18n.locale = params[:locale]
  end
  
  protected
  def protected_admin    
    authenticate_or_request_with_http_basic("Chinapride Admin") do |id, password| 
      id == "admin" && password == "Wsh1rpw"
    end
  end
  
end
