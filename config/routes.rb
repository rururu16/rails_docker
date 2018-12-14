Rails.application.routes.draw do
  root 'home#index'

  get 'mypage', to: 'users#me'
  post 'login', to:'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: %i[new create]
  resources :boards
  resources :comments, only: %i[create destroy]
end
