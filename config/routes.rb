Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # generic syntax
  # verb 'path', to: 'controller#action'
  root to: 'pages#home', as: :home
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  # plant routes  
  # The `new` route needs to be *before* `show` route.
  get 'plants', to: 'plants#index', as: :allp

  # Routes to create a new plant
  post 'plants', to: 'plants#create'
  get 'plants/new', to: 'plants#new'

  # Update an existing plant
  get 'plants/:id/edit', to: 'plants#edit'
  patch 'plants/:id', to: 'plants#update'

  # Delete an existing plant 
  delete 'plants/:id', to: 'plants#destroy'

  # show a single plant
  get 'plants/:id', to: 'plants#show', as: :plant
end