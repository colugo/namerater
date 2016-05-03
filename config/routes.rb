Rails.application.routes.draw do
  resources :titles, except: [:new, :edit]
  resources :actions, except: [:new, :edit]
  get "/names" => "namerators#random"
  get "/names/:count" => "namerators#randomCount"
  get "/" => "pages#show"
end
