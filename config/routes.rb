Rails.application.routes.draw do
  get 'mypage', to: 'users#me'

  get 'login', to: 'sessions#create'

  get 'logout', to: 'sessions#destroy'

  root 'home#index'
  resources :users, only: %i[new create]
  resources :boards
  resources :comments, only: %i[create destroy]
end
