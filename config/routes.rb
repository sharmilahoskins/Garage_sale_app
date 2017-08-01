Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :sales do
    resources :items
  end
  root 'sales#index'
end
