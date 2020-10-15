Rails.application.routes.draw do
  resources :accounts
  resources :transactions
  resources :users

  post '/login', to: 'auth#login'
  get '/decode_token', to: 'users#decode_user'
  # patch '/account/:id', to: 'accounts#update'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
