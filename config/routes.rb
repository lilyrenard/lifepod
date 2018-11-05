Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'memories/add', to: 'pages#add', as: :add
  get 'memories/board', to: 'memboard#board', as: :memboard
  get 'memories/profile', to: 'pages#profile', as: :profile
  get 'memories/spotify_connect', to: 'pages#spotify_connect', as: :spotify_connect

  resources :memories do
    resources :stamps, only: [:new, :create, :edit, :update, :destroy]
  end

  get 'test', to: 'pages#test'
  get 'test2', to: 'pages#test2'
  get 'test3', to: 'pages#test3'

end
