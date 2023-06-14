Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
    # A REFACTO
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # A REFACTO
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
end
