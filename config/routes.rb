Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'lists#index'

  resources :lists, only: [:new, :create, :destroy] do
    resources :tasks, only: [:index, :create, :destroy]
  end
  resources :tops, only: [:index]
end
