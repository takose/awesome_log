Rails.application.routes.draw do

  devise_for :users,  controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  get 'dashboard/index'

  get '/auth/:provider/callback', to: 'sessions#create'

  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
end
