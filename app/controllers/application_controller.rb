class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to sign_in_path unless user_signed_in?
  end
  helper_method :authenticate_user!

  private

  def user_signed_in?
    !!current_user
  end
end
