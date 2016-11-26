Rails.application.routes.draw do
  get 'drugs/index'

  get 'searches/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "drugs#index"
  resources :drugs
  resource :search, only: [:show]

end
