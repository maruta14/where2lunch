Rails.application.routes.draw do
  get 'sessions/new'
  get 'eateries/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'lunch/go'
  root 'lunch#go'
  post 'eateries/create'
end
