Rails.application.routes.draw do
  resources :line_items
  resources :carts
  
  get "/carts/:id(.:format)", to: "carts#show", as: "current"
  get 'store/index'
  
  resources :products
  
  root 'store#index', as: 'store'

end
