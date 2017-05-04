class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    case auth['provider']
    when 'twitter'
      user = User.find_or_create_by(
        uid: auth['uid'],
        oauth_token: auth['credentials']['token'],
        oauth_token_secret: auth['credentials']['secret']
      )
      user.update!(name: auth['info']['name'])
       session[:user_id] = user.id
    end
    render json: JSON.pretty_generate(auth)
  end
end
