Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :restaurant_reviews
  post 'restaurants/:id/reviews/new', to: 'reviews#create'
end
