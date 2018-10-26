Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/add'

  resources :memories do
    resources :stamps, only: [:new, :create, :edit, :update, :destroy]
  end

end
