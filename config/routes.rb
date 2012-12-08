Invoice::Application.routes.draw do
  get "items/create"

resources :bills do
  resources :items
end
resources :items

root :to => 'bills#new'
end
