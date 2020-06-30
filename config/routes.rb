Rails.application.routes.draw do
  get 'purchase_products/create'
  get 'purchase_products/destroy'
  get 'purchases/create'
  get 'purchases/show'
  get 'purchases/index'
  root 'products#search'
  get 'search(.:type)(.:search)', to: 'products#search', as: :search
  
  resources :addresses, :drink_types

  scope 'user' do
    get 'login', to: 'user_sessions#new', as: :login
    post 'login', to: 'user_sessions#create'
    post 'logout', to: 'user_sessions#destroy', as: :logout
    get 'editar/:id', to: 'users#edit', as: :edit_user
    post 'editar/:id', to: 'users#update'
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