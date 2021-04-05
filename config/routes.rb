Rails.application.routes.draw do
  resources :categories
  resources :bookmarks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/categoria', to: 'categories#create', as: "create_category"
  get '/categories.json', to: 'categories#get_api', as: 'get_api'
  
  root 'bookmarks#index'
end
