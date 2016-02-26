Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

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
