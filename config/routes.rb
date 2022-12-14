Rails.application.routes.draw do
  resources :purposes
  resources :experiences 
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
    # resources :favorites, only: %i(create destroy)

  # get 'search', to: 'experiences#search'
    # collection do
    #   post :index_user
    # end
    # member do
    #   get :index_user 
    # end
  # get '/experiences/:id/index_user' => 'experiences#index_user'

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
  # resources :favorites, only: %i(create destroy)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
