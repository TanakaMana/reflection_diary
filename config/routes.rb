Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'reflections#index'
  devise_for :users
  resources :reflections
  resources :diaries
  resources :users
end
