Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users

 root as: 'user#show'
  root to: 'welcome#index'
end
