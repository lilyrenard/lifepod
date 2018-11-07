Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  get 'memories/add', to: 'pages#add', as: :add
  get 'memories/board', to: 'memboard#board', as: :memboard
  get 'memories/profile', to: 'pages#profile', as: :profile

  get 'memories/dashboard', to: 'pages#dashboard', as: :dashboard

  get 'memories/add/photo', to: 'pages#photo', as: :modal_photo
  get 'memories/add/video', to: 'pages#video', as: :modal_video
  get 'memories/add/quote', to: 'pages#quote', as: :modal_quote


  resources :memories do
    resources :stamps, only: [:new, :create, :edit, :update, :destroy]
  end

  get 'test', to: 'pages#test'
  get 'test2', to: 'pages#test2'
  get 'test3', to: 'pages#test3'

end
