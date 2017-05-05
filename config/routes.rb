Rails.application.routes.draw do

  get 'landing/index'

  get 'dashboard/index'

  get '/auth/:provider/callback', to: 'sessions#create'

end
