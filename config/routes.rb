Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'pokemon', to: 'pokemon#capture', as: 'capture'
  patch 'pokemon', to: 'pokemon#damage', as: 'damage'
end
