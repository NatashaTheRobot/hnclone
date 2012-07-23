Hnclone::Application.routes.draw do
  root to: "users#new"
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  
  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

end
