Rails.application.routes.draw do
  get 'comments/new'

  get 'products/show'

  get 'userparams/new'

  get 'userparams/edit'

 

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'
  
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
    get 'sign_out', to: 'devise/sessions#destroy'
  end
  
  get 'show', to: 'home#show'
  get 'profile', to: 'userparams#profile'

  resources :userparams
  resources :products
  resources :comments
  resources :orders
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
