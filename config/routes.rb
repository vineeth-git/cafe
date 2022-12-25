Rails.application.routes.draw do
  get 'menu_items', to: "menu_items#index"
  get "menu_items/:id", to: "menu_items#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/hello", to: "cafe#index"
  resources :users, only: [:index, :show] do
    resources :user_carts do
      get "users/:user_id/user_carts", to: "user_carts#index"
      delete "users/:user_id/user_carts/:item_id", to: "user_carts#destroy"
    end
  end
end
