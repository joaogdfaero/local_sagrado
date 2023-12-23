Rails.application.routes.draw do
  resources :locals
    devise_for :users
    root "home#index"
end
