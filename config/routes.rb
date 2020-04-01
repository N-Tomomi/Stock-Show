Rails.application.routes.draw do
  root to: 'stocks#index'
  # resources :stocks, except: :index
  resources :stocks do
    resources :gifts, only: [:create, :destroy]
    resources :dividends, only: [:create, :destroy]
  end
end
