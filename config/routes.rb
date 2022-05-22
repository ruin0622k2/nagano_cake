Rails.application.routes.draw do

  root to: 'public/homes#top'
  get "/about" => "public/homes#about"

  devise_for :admins, skip: [:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  # 会員側のルーティング設定
    resources :homes
    resources :items
    resources :customers do
      collection do
        get :unsubscribe
        patch :withdraw
      end
    end
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
