Magpie::Application.routes.draw do
  match '/lists' => 'lists#index', :as => :lists
end
