Rails.application.routes.draw do
  mount Test::API => '/'
  get "/top/" => "top#index"
end
