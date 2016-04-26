Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  resources :lands, only: [:index, :show, :destroy] do
    collection { post :import }
  end

  resources :orders
  
  resources :contacts, only: [:create]

  match '/neighborhoods/find_by_city', to: 'neighborhoods#find_by_city', via: :get
  
end
