Rails.application.routes.draw do
  devise_for :users
  resource :user_detail, only: [:new, :create, :edit, :update, :show]
  #  get users/sign_out    to: 'devise/sessions#destroy'
  root 'homes#index' # or your root path
end
