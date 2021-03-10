class SecretsController < ApplicationController
  before_action :require_login

  def current_user
    session[:name] ||= nil
  end
  
  def show
  end
  
  def require_login 
    if current_user.nil? || current_user.empty?
  
    else 
      redirect_to controller: 'sessions', action 'new'

end