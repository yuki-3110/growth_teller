Rails.application.routes.draw do
  resources :experiences
  resources :careers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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
