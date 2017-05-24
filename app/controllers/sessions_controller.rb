class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    case auth_hash['provider']
    when 'twitter'
      user = User.find_or_create_by!(
        uid: auth_hash['uid'],
        oauth_token: auth_hash['credentials']['token'],
        oauth_token_secret: auth_hash['credentials']['secret']
      )
      user.update!(name: auth_hash['info']['name'])
      session[:user_id] = user.id
    when 'jawbone'
      if current_user
        user = current_user
        jawbone_account = AuthInfo.find_or_create_by!(
          user_id: user.id,
          service_id: Service.find_by(name: 'jawbone').id
        )
        jawbone_account.update!(token: auth_hash['credentials']['token'])
      end
    end
    redirect_to root_path
  end
end
