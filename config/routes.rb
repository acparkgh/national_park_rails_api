Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get 'users/:username', to: 'users#show'
      resources :users
      resources :parks
      resources :activities
      resources :mytrips
      resources :parkactivities
      resources :comments
    end
  end
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
