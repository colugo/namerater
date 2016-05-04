Rails.application.routes.draw do
  resources :titles, except: [:new, :edit]
  resources :actions, except: [:new, :edit]
  get "/names/*config" => "namerators#random"
  get "/" => "pages#show"
end
