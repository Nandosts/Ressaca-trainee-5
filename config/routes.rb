Rails.application.routes.draw do
  root 'products#search'
  get 'compra(.:id)', to: 'purchases#show', as: :purchase_show
  get 'carrinho', to: 'purchases#cart', as: 'cart'
  post 'buy_product(.:id)', to: 'purchase_products#create', as: :buy
  post 'remove_product', to: 'purchase_products#destroy', as: :remove_product
  get 'search(.:type)(.:search)', to: 'products#search', as: :search

  resources :addresses, :drink_types

  scope 'user' do
    get 'login', to: 'user_sessions#new', as: :login
    post 'login', to: 'user_sessions#create'
    post 'logout', to: 'user_sessions#destroy', as: :logout
    get 'novo', to: 'users#new', as: :new_user
    post 'novo', to: 'users#create'
    delete '/', to: 'users#destroy'
    get 'perfil(.:id)', to: 'users#show', as: :perfil_user

    get 'money', to: 'users#add_money', as: :money
    post 'money', to: 'users#add_money_logic'
  end

  resources :products do
    member { patch :favorite}
  end
end