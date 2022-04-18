Rails.application.routes.draw do

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  devise_for :users
  root "photos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
