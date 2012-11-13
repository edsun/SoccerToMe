class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  
  def require_sudo
    require 'digest' #Require the digest gem
    
    authenticate_or_request_with_http_basic do |username, password|
      # Return true if the username and password is correct.
      username == 'admin' &&
      Digest::SHA1.hexdigest('591'+password) == '0142a84ae2c8858b082e0ca57489c0a1f83ebd82'
      # FYI: The password is dragonfruit.
    end
  end
end
