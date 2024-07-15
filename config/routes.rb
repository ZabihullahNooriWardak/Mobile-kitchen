Rails.application.routes.draw do
  resources :reviews
  root 'home#index'
  get 'chatbot/index'
  get 'chatbot/respond'
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
  get 'chatbot', to: 'chatbot#index'
  post 'chatbot/respond', to: 'chatbot#respond'
  get 'recommendations', to: 'recommendations#new'
  post 'recommendations', to: 'recommendations#create'

  resource :cart, only: [:show] do
    resources :cart_items, only: [:create, :destroy]
  end
  
  resources :cart_items, only: [:create, :destroy]
  resources :orders, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :foods
  devise_for :users
  devise_scope :user do
    get "/user/signout", to: "devise/sessions#destroy", as: "signout"
    end
  resource :user_detail, only: [:new, :create, :edit, :update, :show]
  
  namespace :admin do
    resources :orders, only: [:index, :show, :update, :destroy]
  end
  resources :prebuilt_menus
  get 'foods/index'
end 
resources :orders do
  member do
    get :rate
  end
  resources :reviews, only: [:create]
end
end
