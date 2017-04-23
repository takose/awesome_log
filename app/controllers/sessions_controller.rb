class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    p auth
    redirect_to root_path
  end
end
