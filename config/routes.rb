Rails.application.routes.draw do
  root 'lists#index'
  devise_for :users
  resources :lists

  post 'products' => 'products#create'
  put 'products' => 'products#update'
  delete 'products' => 'products#destroy'
end
