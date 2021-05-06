Rails.application.routes.draw do
  devise_for :users
  root to: 'pets#index'
  resources :users, only: [:edit, :update]

end
