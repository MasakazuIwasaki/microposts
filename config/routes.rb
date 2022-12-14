Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'edit'  , to: 'users#edit'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users
  resources :microposts
  resources :relationships, only: [:create, :destroy]
end