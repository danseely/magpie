Magpie::Application.routes.draw do
  resources :users, only: [:show, :new, :create]
  match '/signin' => 'sessions#new'
  match '/lists' => 'lists#index'
  match '/lists/:id' => 'lists#show'
end
