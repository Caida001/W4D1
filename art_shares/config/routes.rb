Rails.application.routes.draw do
  # resource :user
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  delete 'users/:id', to: 'users#destroy'
  post 'users', to: 'users#create'
  put 'users/:id', to: 'users#update'
  get 'users/:user_id/artworks', to: 'artworks#index'

  # get 'artworks', to: 'artworks#index'
  get 'artworks/:id', to: 'artworks#show'
  delete 'artworks/:id', to: 'artworks#destroy'
  post 'artworks', to: 'artworks#create'
  put 'artworks/:id', to: 'artworks#update'

  post '/artwork_shares', to: 'artwork_shares#create'
  delete '/artwork_shares/:id', to: 'artwork_shares#destroy'
end
