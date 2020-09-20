Rails.application.routes.draw do
  resources :questions ,only: [:show]
  devise_for :users
  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
