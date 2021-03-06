Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :dashboards
  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks',
    registration: 'users/registrations'
   }
  root to: 'home#index'
  resources :user_responsibilities
  resources :user_conflicts
  resources :user_accesses do
    post :import_xlsx, on: :collection
  end
  resources :responsibility_conflicts
  resources :conflicts
  resources :responsibilities
  resources :cycles
  resources :users
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
