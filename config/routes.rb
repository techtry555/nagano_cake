Rails.application.routes.draw do
  root to: 'public/homes#top'
  get 'about', to: 'public/homes#about'
  get 'customers/my_page', to: 'public/customers#show'
  get 'customers/edit', to: 'public/customers#edit'
  get 'customers/unsubscribe', to: 'public/customers#unsubscribe'
  get 'admin', to: 'admin/homes#top'
  post 'customers', to: 'public/customers#update'

  # 管理者用 ## URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  namespace :admin do
    resources :items, only: [:index, :new, :show, :edit, :create, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:index, :show]
  end

  # 顧客用  ## URL /customers/sign_in ...
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  namespace :public do
    resources :items, only: [:index, :show]
    resources :customers, only: [:show, :edit, :update]
    resources :orders, only: [:new, :create, :index, :show]
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
    resources :cart_items, only: [:index, :create, :update, :destroy]
  end
end
