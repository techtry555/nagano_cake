Rails.application.routes.draw do
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  ### 後でonlyで減らす
  namespace :admin do
    resources :items
    resources :homes
    resources :customers
    resources :orders
    resources :order_details
  end

  namespace :public do
    resources :items
    resources :homes
    resources :customers
    resources :orders
    resources :addresses
    resources :cart_items
  end
end
