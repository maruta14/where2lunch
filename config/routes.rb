Rails.application.routes.draw do
  get 'eateries/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'eateries/create'
  get 'lunch/go'
  root 'lunch#go'
  get '/login', to:'sessions#new'
  delete '/logout', to:'sessions#destroy'
  post 'sessions/create'

end
