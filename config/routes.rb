Rails.application.routes.draw do
  root to: 'home#index'
  resources :user_responsibilities
  resources :user_conflicts
  resources :user_accesses
  resources :responsibility_conflicts
  resources :conflicts
  resources :responsibilities
  resources :cycles
  resources :users
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
