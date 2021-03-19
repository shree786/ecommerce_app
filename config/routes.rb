Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :admin do
    resources :users
  end
end
