Magpie::Application.routes.draw do
  match '/lists' => 'lists#index'
  match '/lists/:id' => 'lists#show'
end
