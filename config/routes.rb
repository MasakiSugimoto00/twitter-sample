Rails.application.routes.draw do
  resources :users
  resources :posts
  get "login" =>"users#login_form"
  post "login" =>"users#login"
  post "logout" => "users#logout"
  root "home#top"
  get "about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
