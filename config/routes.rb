Rails.application.routes.draw do
  resources :answers ,only: [:create]
  get '/question', to: 'questions#question'
  get '/answer',   to: 'answers#answer', as: 'answer'
  devise_for :users
  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
