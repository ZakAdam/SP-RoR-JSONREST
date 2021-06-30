Rails.application.routes.draw do
  get '/articles', to: "articles#index"
  post '/new', to: 'articles#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end