Rails.application.routes.draw do
  get 'store/index'

  resources :products
  resources :products
  
  root 'store#index', as: 'store'

end
