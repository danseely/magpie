Magpie::Application.routes.draw do
  resources :users, only: [:show, :new, :create]
  match '/signup' => 'users#new'

  resources :sessions, only: [:new, :create, :destroy]
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy'

  resources :lists, only: [:index, :show]

  root to: redirect('/signup')
end
