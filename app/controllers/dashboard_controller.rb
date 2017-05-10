class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: :index

  def index
  end

  private

  def set_user
    @user = User.find(session[:user_id])
  end
end
