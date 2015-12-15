Rails.application.routes.draw do

  get 'items/create'

  get 'items/new'

  get 'items/destroy'

  devise_for :users

  authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end
  # root to: "users#show", as: :authenticated_root

  resources :items, only: (:create)

  root to: 'welcome#index'
end
