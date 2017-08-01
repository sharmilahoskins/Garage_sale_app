Rails.application.routes.draw do
  devise_for :users
  get 'sales/mysales'

  resources :sales do
    resources :items
  end
  
  root 'sales#index'
end
