class SecretsController < ApplicationController
  before_action :require_login

  def current_user
    session[:name] ||= nil
  end
  
  def show
  end
  
  def require_login 
    if !current_user.nil?
    else 
      redirect_to login_path
    end 
  end 

end