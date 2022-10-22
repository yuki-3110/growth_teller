Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :homes, only: %i( index )
  resources :users, only: %i( show )
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
