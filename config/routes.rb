Rails.application.routes.draw do
 resources :subgenres do
   resources :songs
 end
end
