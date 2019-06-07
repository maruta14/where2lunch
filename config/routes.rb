Rails.application.routes.draw do
  get 'users/new'
  # get 'eateries/new'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post 'eateries/create'
  # get 'lunch/go'
  # root 'lunch#go'

  get '/login', to:'sessions#new'
  delete '/logout', to:'sessions#destroy'
  post 'sessions/create'
  root 'static_pages#home' # => root_path
  get  '/help',    to: 'static_pages#help'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get  '/poem',    to: 'poems#poem'
  get  '/result',    to: 'poems#result'
  resources :users
end
