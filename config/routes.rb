Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :options
      resources :mid_points
      resources :addresses
      resources :users
      resources :adapters
      post "/auth", to: "sessions#create"
      get "/current_user", to: "sessions#show"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
