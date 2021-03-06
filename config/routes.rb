Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :cars, only: [:new, :create, :show, :index, :edit, :update, :destroy]

  resources :items, only: [:new, :create, :show, :index, :edit, :update, :destroy]
end
