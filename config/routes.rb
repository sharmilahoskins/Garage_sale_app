Rails.application.routes.draw do
  devise_for :users
  resources :sales do
    resources :items
  end
  root 'sales#index'
end
