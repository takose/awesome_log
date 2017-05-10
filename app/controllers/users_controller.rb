class UsersController < ApplicationController
  before_action :set_user, only: :edit

  def edit
  end

  private

  def set_user
    @user = User.find(session[:user_id])
  end
end
