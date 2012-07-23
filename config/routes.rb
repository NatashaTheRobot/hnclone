Hnclone::Application.routes.draw do
  root to: "users#new"
  
  resources :users
  
  match '/signup', to: "users#new"

end
