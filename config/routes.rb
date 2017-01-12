Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/register', to: 'users#new'
  get '/signin', to: 'sessions#new'
  get '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  root 'static#index'
end
