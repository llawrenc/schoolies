Rails.application.routes.draw do
  resources :locations
  resources :subcategories
  resources :categories
  devise_for :users, path: ''
  resources :reports
  root 'dashboard#index'
end