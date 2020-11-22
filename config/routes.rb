Rails.application.routes.draw do
  resources :parkactivities
  resources :activities
  resources :parks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
