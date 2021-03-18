Rails.application.routes.draw do
  get 'admin/home'
  devise_for :users
  root 'home#index'
  namespace :admin do
    resources :users
  end
  resource :admin, only: [:show, :update, :destroy]
end
