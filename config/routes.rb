Rails.application.routes.draw do
  root 'questions#index'

  resources :questions do
    resources :answers do
        put 'like', to: 'answers#upvote'
        put 'dislike', to: 'answers#downvote'
      end
    end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]


end
