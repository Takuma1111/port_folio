Rails.application.routes.draw do

  resources :syasins
  resources :onseis
  resources :dougas

  devise_for :users
  root 'posts#home'
    get 'tests/phote'
    get "posts/phote_1" => "posts#phote_1"
    get "posts/phote" => "posts#phote"
    get "posts/sound" => "posts#sound"
    get "posts/video" => "posts#video"
    get "posts/home" => "posts#home"
    get "posts/set" => "posts#setei"
    get "posts" => "posts#home"
    get "posts/setting" => "posts#setei"
    get "datashow" => "posts#datashow"

    get "phote" => "posts#phote"
    get "phote/:id" => "posts#datashow"

    get "sound" => "posts#sound"
    get "sound/:id" => "posts#datashowsound"

    get "video" => "posts#video"
    get "video/:id" => "posts#datashowvideo"

    get "home" => "posts#home"
    get "set" => "posts#setei"

    get "photenew" => "photenews#new"

    get "sessions/destroy" => "devise#sessions#new"


  resources :posts






  resources :comments, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
