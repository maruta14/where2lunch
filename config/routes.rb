Rails.application.routes.draw do
  # get 'users/new'
  # get 'eateries/new'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post 'eateries/create'
  # get 'lunch/go'
  # root 'lunch#go'

  root 'static_pages#home' # => root_path
  get  '/help',    to: 'static_pages#help'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/poem',    to: 'poems#poem'
  get  '/result',    to: 'poems#result'
  post 'poems/point'
  get  '/post', to: 'microposts#post'
  resources :users
  resources :microposts,          only: [:create, :destroy]
end
