Rails.application.routes.draw do
  devise_for :users
  resources :devise
  root to: 'sessions#new'
end
