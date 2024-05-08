Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

namespace :api do
  resource :star_wars,only: [] do
    get 'films' , on: :member
    get 'film/:id' , on: :member , action: 'get_film'
    get 'people' , on: :member
    get 'people/:id' , on: :member , action: 'get_person'
    get 'species' , on: :member
    get 'starships' , on: :member
    get 'vehicles' , on: :member
    get 'planets' , on: :member
  end
end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
