Rails.application.routes.draw do
  get 'design/index'
  get 'design/show'
  get 'design/new'
  get 'design/edit'
  devise_for :users
  root to: 'pages#home'

  resources :designs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
