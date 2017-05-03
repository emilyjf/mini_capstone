Rails.application.routes.draw do
  get '/candy' => 'candies#candy_action'
end
