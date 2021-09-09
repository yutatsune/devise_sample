Rails.application.routes.draw do
  get "users/show"
  root to: "items#index"
  devise_for :users
  resources :items
  resource :users, only: :show
end
