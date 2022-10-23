Rails.application.routes.draw do
  # devise_for :users
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    # passwords: "users/passwords",
    # sessions: "users/sessions",
  }

  root 'homes#index'
  resources :homes, only: %i( index )
  resources :users, only: %i( show )
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
