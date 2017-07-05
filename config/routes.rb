Rails.application.routes.draw do
  get 'home/index'

  resources :players

  root 'home#index'
end