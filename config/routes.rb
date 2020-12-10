Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts do
    member do
      post :like_create
      delete :like_destroy
    end
  end
  resources :relationships, only: [:create, :destroy]
  get "login" =>"users#login_form"
  post "login" =>"users#login"
  post "logout" => "users#logout"
  root "home#top"
  get "about" => "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
