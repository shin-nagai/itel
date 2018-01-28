Rails.application.routes.draw do
  get 'root/index'
  get 'done' => 'warehouses#done'
  root to: 'root#index'

   devise_for :users
  resources :reservations
  resources :warehouses
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
