Magpie::Application.routes.draw do
  resources :users, only: [:new, :create]
  match '/lists' => 'lists#index'
  match '/lists/:id' => 'lists#show'
end
