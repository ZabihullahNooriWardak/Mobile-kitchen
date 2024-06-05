Rails.application.routes.draw do
  devise_for :users
  resource :user_detail, only: [:new, :create, :edit, :update, :show]
  root 'homes#index' 
end
