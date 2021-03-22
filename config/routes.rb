Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :admins do
    resources :users
    resources :products
  end
end
