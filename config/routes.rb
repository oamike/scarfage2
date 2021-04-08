Rails.application.routes.draw do
  resources :images
  resources :scaffolds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "/" #set this to Items#index
  resources :users
  resources :items

  root 'items#index'
end
