Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      resources :decks
      resources :cards
      post '/login', to: 'auth#login'
      post '/signup', to: 'auth#create'
      post '/reauth', to: 'auth#reauth'
    end
  end

end
