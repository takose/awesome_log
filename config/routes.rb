Rails.application.routes.draw do

  get 'dashboard/index'

  get '/auth/:provider/callback', to: 'sessions#create'

end
