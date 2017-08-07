Rails.application.routes.draw do
  get 'admin/index'

  get 'admin/update'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'sales/mysales'

  resources :sales do
    resources :items
  end

  resources :items

  root 'sales#index'

  get "admin" => "admin#index"
  put "admin/:id" => "admin#update"
  patch "admin/:id" => "admin#update"
end
