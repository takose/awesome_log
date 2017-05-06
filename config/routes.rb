Rails.application.routes.draw do

  devise_for :users,  controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  root to: 'dashboard#index'

  get 'landing/index', as: 'new_user_session'

  get 'dashboard/index'

  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
end
