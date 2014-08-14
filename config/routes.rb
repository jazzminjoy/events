Events::Application.routes.draw do
  resources :events

  # root 'welcome#index'
  root 'events#index'
  get "events" => "events#index"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

end
