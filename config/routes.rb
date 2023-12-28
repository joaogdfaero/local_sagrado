Rails.application.routes.draw do
  resources :locals
  devise_for :users
  root "pages#home"
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
