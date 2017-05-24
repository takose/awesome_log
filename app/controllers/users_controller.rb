class UsersController < ApplicationController
  before_action :set_user, only: :edit

  def edit
    @registered_services = current_user.services.all
    @unregistered_services = Service.all - @registered_services
  end

  private

  def set_user
    @user = User.find(session[:user_id])
  end
end
