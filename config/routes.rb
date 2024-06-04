Rails.application.routes.draw do
  devise_for :users
  resources :homes
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "homes#index"
end
