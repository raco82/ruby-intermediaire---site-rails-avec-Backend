Rails.application.routes.draw do
  root 'static_pages#home'
  get '/new', to: 'users#new', as: 'new_user'
  post '/new', to: 'users#create'
  get '/users/:name', to: 'users#show', as: 'user'
end
