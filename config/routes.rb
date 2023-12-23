Rails.application.routes.draw do
  resources :locals
    devise_for :users
    root "locals#index"
end
