Magpie::Application.routes.draw do
  resources :users, only: [:show, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy'

  match '/lists' => 'lists#index'
  match '/lists/:id' => 'lists#show'
end
