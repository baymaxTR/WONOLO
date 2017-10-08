Rails.application.routes.draw do
  get 'main/index'

  devise_for :users
  resources :locations
  get 'home/index'
  get 'locations/index'
  get 'main/index'


  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
