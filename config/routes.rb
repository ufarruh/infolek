Rails.application.routes.draw do
  get 'drugs/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "drugs#index"
  resources :drugs
end
