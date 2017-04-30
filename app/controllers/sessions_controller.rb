class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    render json: JSON.pretty_generate(auth)
  end
end
