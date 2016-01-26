class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_buyer


  helper_method :current_user


  private

  def current_user
    @current_user ||= Buyer.find(session[:buyer_id]) if session[:buyer_id]
  end

  protected

  def check_buyer
    if current_user.nil?
      redirect_to '/'
    end
  end
end
