Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'memories/add', to: 'pages#add', as: :add
  get 'memories/board', to: 'memboard#board', as: :memboard

  resources :memories do
    resources :stamps, only: [:new, :create, :edit, :update, :destroy]
  end

  get 'test', to: 'pages#test'

end
