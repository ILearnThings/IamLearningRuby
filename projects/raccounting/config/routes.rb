Rails.application.routes.draw do

  devise_for :users
  # resources :companies
  # resources :customers
  # resources :products

  # get 'customers/index'
  root 'companies#show'
  # get ':company_id', to: 'companies#index'
  # scope path: 'company_id', as: :current_user.id do
  #   resources :category
  #   resources :companies
  #   resources :customers
  #   resources :products
  #   resources :users
  # end
  # resources :companies, only: [:index]

  resources :companies, :path => '', :only => [:show] do
    resources :categories
    resources :customers
    resources :products
    resources :users
    resources :stockmovements
  end


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
