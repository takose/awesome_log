Rails.application.routes.draw do

  root to: 'dashboard#index'

  get '/welcome', to: 'landing#index', as: 'sign_in'

  get '/auth/:provider/callback', to: 'sessions#create'
end
