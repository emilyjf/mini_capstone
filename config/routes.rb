Rails.application.routes.draw do
  get '/' => 'candies#index'
  get '/candies' => 'candies#index'

  get '/candies/new' => 'candies#new'
  post '/candies' => 'candies#create'

  get '/candies/:id' => 'candies#show'
  
  get '/candies/:id/edit' => 'candies#edit'
  patch '/candies/:id' => 'candies#update'

  delete '/candies/:id' => 'candies#destroy'

  get '/random' => 'candies#random'
end
