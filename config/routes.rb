Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end
  # root to: "users#show", as: :authenticated_root

  resources :items

  root to: 'welcome#index'
end
