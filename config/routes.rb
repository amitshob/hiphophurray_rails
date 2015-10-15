Rails.application.routes.draw do
  root 'subgenres#index'
  resources :subgenres do
    resources :songs do
      member do
        post :upvote
        post :downvote
      end
    end
  end
end
