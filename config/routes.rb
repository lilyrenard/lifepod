Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  get 'memories/add', to: 'pages#add', as: :add
  get 'memories/board', to: 'memboard#board', as: :memboard
  get 'memories/profile', to: 'pages#profile', as: :profile
  get 'memories/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :memories do
    resources :stamps, only: [:new, :create, :edit, :update, :destroy]
  end

  get 'test', to: 'pages#test'
  get 'test2', to: 'pages#test2'
  get 'test3', to: 'pages#test3'

end
