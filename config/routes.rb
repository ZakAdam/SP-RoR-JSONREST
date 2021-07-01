Rails.application.routes.draw do
  get '/articles', to: "articles#index"
  get '/articles/:id', to: "articles#choose_one"
  post '/new', to: 'articles#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
