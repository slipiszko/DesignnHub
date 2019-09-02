Rails.application.routes.draw do
  root to: 'pages#home'
  resources :profiles, only: [:edit, :update]

  devise_for :users, skip: :registrations
  as :user do
    get    '/users/cancel',    to: 'devise/registrations#cancel', as: 'cancel_user_registration'
    post   '/users',           to: 'devise/registrations#create', as: 'user_registration'
    delete '/users',           to: 'devise/registrations#destroy'
    get    '/users/sign_up',   to: 'devise/registrations#new', as: 'new_user_registration'
    # get    '/users/edit'      to: 'devise/registrations#edit', as: 'edit_user_registration'
    # patch  '/users',           to: 'devise/registrations#update'
    # put    '/users',           to: 'devise/registrations#update'
  end
end
