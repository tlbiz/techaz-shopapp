Rails.application.routes.draw do
  root :to => 'home#index'
  namespace :webhook do 
    post '/products/create', to: 'products#create'
    post '/products/update', to: 'products#update'
    post '/orders/create', to: 'orders#create'
    post '/orders/update', to: 'orders#update'

    post '/checkouts/create', to: 'checkouts#create'
    post '/checkouts/update', to: 'checkouts#update'
  end 

  get '/products', to: 'home#products', as: :products
  get '/orders', to: 'home#orders', as: :orders
  get '/webhooks', to: 'home#webhooks', as: :webhooks
  
  get '/auth/failure', to: 'home#failure'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
