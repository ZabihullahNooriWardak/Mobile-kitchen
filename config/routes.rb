Rails.application.routes.draw do
  scope "(:locale)", locale: /en|fa|ps/ do
    resources :reviews
    get 'dashboard', to: 'dashboard#index'
    
    namespace :admin do
      resources :users, only: [:index, :show, :edit, :update, :destroy]
      resources :orders, only: [:index, :show, :update, :destroy]
    end
    
    # Devise routes for user authentication
    devise_for :users

    devise_scope :user do
      authenticated :user do
        root to: 'dashboard#index', as: :authenticated_root
      end

      unauthenticated do
        root to: 'home#index', as: :unauthenticated_root
      end
      
      get '/user/signout', to: 'devise/sessions#destroy', as: 'signout'
    end

    root 'home#index'

    get 'chatbot/index'
    get 'chatbot/respond'
    
    get 'contact', to: 'static_pages#contact'
    get 'static_pages/contact'
    
    get 'about', to: 'homes#index'
    
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
    resource :user_detail, only: [:new, :create, :edit, :update, :show]
    resources :prebuilt_menus
    
    resources :orders do
      member do
        get :rate
      end
      resources :reviews, only: [:create]
    end
  end
end
