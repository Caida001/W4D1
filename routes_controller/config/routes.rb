Rails.application.routes.draw do
  # resource :users
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  get 'users/new', to: 'users#new'
  get 'users/edit', to: 'users#edit'
  patch 'users', to: 'users#update'
  put 'users', to: 'users#update'
  delete 'users', to: 'users#destroy'
  post 'users', to: 'users#create'
end
