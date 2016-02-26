Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  
  get "/carts/:id(.:format)", to: "carts#show", as: "current"
  get 'store/index'
  
  resources :products
  
  root 'store#index', as: 'store'

  resources :line_items do
    put 'decrease', on: :member
  end

end
