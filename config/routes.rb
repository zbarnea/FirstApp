Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :products

  resources :orders, only: [:index, :show, :create, :destroy]

  get 'users/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  post 'static_pages/thank_you'

  get 'static_pages/index'

  root 'static_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end