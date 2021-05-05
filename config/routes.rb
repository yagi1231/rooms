Rails.application.routes.draw do
  get 'tops/index'
  get 'posts/index'
  get 'users/index'
  get "users/:id" => "users#show"
  resources :users
  resources :posts
  resources :tops
  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "users/:id/edit" => "users#edit"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  post "logout" => "users#logout"
  post "users/:id/update" => "users#update"
  post "posts/:id/update" => "posts#update"            

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
