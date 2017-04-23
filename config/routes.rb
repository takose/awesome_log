Rails.application.routes.draw do
  get 'applications/index'

  get 'applications/new'

  get '/auth/:provider/callback', to: 'sessions#create'

end
