Rails.application.routes.draw do
  scope "(:locale)", locale: /en|fa|ps/ do
   get 'contact', to: 'static_pages#contact'
  get 'static_pages/contact'
  get 'admin_orders/index'
  get 'admin_orders/show'
  get 'admin_orders/update'
  get 'admin_orders/destroy'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/create'
  get 'orders/edit'
  get 'orders/update'
  get 'orders/destroy'
  get 'about', to:'homes#index'
  get 'recommendations', to: 'recommendations#new'
  post 'recommendations', to: 'recommendations#create'

  resource :cart, only: [:show] do
    resources :cart_items, only: [:create, :destroy]
  end
  
  resources :cart_items, only: [:create, :destroy]
  resources :orders, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :foods
  devise_for :users
  resource :user_detail, only: [:new, :create, :edit, :update, :show]
  
  namespace :admin do
    resources :orders, only: [:index, :show, :update, :destroy]
  end
  resources :prebuilt_menus
  root 'foods#index'
end 
end
