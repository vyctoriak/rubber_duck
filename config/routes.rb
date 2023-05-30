Rails.application.routes.draw do
  get 'ducks/index'
  devise_for :users
  root to: "ducks#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :ducks, only: [:index, :show, :new, :create]
  # Defines the root path route ("/")
  #root "pages#index"
end
