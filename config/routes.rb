Rails.application.routes.draw do
  devise_for :users
  #get 'tasks/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'top#index'

  resources :lists, only: [:new, :create, :destroy] do
    resources :tasks, only: [:index, :create, :destroy]
  end

end
