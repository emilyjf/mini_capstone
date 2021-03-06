class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :calculate_cart_count

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def admin_signed_in?
    current_user && current_user.admin
  end

private
  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def authenticate_admin! 
    redirect_to "/" unless current_user && current_user.admin
  end

  def calculate_cart_count 
    if current_user
      @cart_count = current_user.cart.cart_count
    else
      @cart_count = 0
  end


end



