Rails.application.routes.draw do
  ### 後でrootパス設定
  ### root to: 'homes#top'

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  ## routing一覧からアクションをヒントにonlyで制限
  namespace :admin do
    resources :items, only: [:index, :new, :show, :edit, :create, :update]
    resources :homes
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]
  end

  namespace :public do
    resources :items, only: [:index, :show]
    resources :homes
    resources :customers, only: [:show, :edit, :update]
    resources :orders, only: [:new, :create, :index, :show]
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
    resources :cart_items, only: [:index, :create, :update, :destroy]
  end
end
