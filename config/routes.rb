Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :vehicles
  resources :cars, controller: 'vehicles', type: 'Car'
  resources :motorcycles, controller: 'vehicles', type: 'Motorcycle'
  resources :bicycles, controller: 'vehicles', type: 'Bicycle'

end
