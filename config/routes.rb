Rails.application.routes.draw do
  resources :categories, only: %i[index new create] do
    resources :app_transactions, only: %i[index new create]
  end

  get 'splash', to: 'splash#index'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'categories#index'
end
