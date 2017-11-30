Rails.application.routes.draw do
  resources :options
  resources :mid_points
  resources :addresses
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
