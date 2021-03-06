Rails.application.routes.draw do

  devise_for :users

  resources :tickets, only: [:create, :show]
  resource :search, only: [:new, :show, :edit]

  namespace :admin do
    resources :railway_stations do
      patch :update_position, on: :member 
    end
    resources :trains  
    resources :routes
    resources :tickets
  end 


  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
