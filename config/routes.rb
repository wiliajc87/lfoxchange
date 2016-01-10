Rails.application.routes.draw do
  resources :answers, only: [:new, :create, :update, :destroy]
  resources :questions
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'questions#index'

end
