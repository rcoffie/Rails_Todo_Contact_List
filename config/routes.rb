Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "contact#index"

  get "/contact" , to: "contact#index"
  resources :contact, only:[:index, :show, :create, :update, :destroy]
end
