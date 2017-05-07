Rails.application.routes.draw do
  get '/' => 'candies#index'
  get '/candies' => 'candies#index'
  get '/candies/:id' => 'candies#show'
  post '/candies' => 'candies#create'
  get '/recipes/new' => 'recipes#new'
end
