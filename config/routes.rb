Rails.application.routes.draw do
   resources :subgenres do
     resources :songs do
      member do
        post :upvote
        post :downvote
      end
   end
  end
end
