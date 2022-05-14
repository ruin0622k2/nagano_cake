Rails.application.routes.draw do

  root to: 'homes#top'
  get "/home/about" => "homes#about"
  get "/admin/genres", to: "admin/genres#index", as: "genres"
  devise_for :admins, skip: [:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  # 会員側のルーティング設定
    resources :items
    resources :customers
    resources :cart_items
    resources :orders
    resources :addresses
  # 管理者側のルーティング設定
  namespace :admin do
    resources :items
    resources :genres
    resources :customers
    resources :orders
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
