Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :show, :create]
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
    end
end
