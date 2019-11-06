Rails.application.routes.draw do
  root to: 'pages#home'

  resources :articles

  resources :portfolios do
    resources :critiques do
      resources :responses, only: [:new, :create, :edit, :update, :destroy]
    end
  end

  resources :questions do
    resources :answers, except: [:show] do
      resources :responses, only: [:new, :create, :edit, :update, :destroy]
    end
  end

  resources :designs do
    resources :comments, except: [:show] do
      resources :responses, only: [:new, :create, :edit, :update, :destroy]
    end
    resources :design_design_tags, only: [:new, :create]
  end

  resources :job_posts do
    resources :job_applications, only: [:new, :create]
  end

  resources :answers, only: [:show] do
    member do
      post :upvote
      post :downvote
    end
  end

  resources :comments, only: [:show] do
    member do
      post :upvote
      post :downvote
    end
  end

  resources :profiles, only: [:index, :show] do
    resources :users, only: [:index] do
      member do
        post :follow
        post :unfollow
      end
    end
  end

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :job_experiences, only: [:new, :create, :edit, :update, :destroy]

  # as :user do
    # get    '/users/cancel',    to: 'devise/registrations#cancel', as: 'cancel_user_registration'
    # post   '/users',           to: 'devise/registrations#create', as: 'user_registration'
    # delete '/users',           to: 'devise/registrations#destroy'
    # get    '/users/sign_up',   to: 'devise/registrations#new',    as: 'new_user_registration'
    # get    '/users/edit'       to: 'devise/registrations#edit',   as: 'edit_user_registration'
    # patch  '/users',           to: 'devise/registrations#update'
    # put    '/users',           to: 'devise/registrations#update'

    # get    '/users/sign_in',    to: 'devise/sessions#new', as: 'new_user_session'
    # post   '/users/sign_in',    to: 'devise/sessions#create', as: 'user_session'
    # delete '/users/sign_out',   to: 'devise/sessions#destroy', as: 'destroy_user_session'

    # get '/users/password/new(.:format)',  to: 'devise/passwords#new',    as: 'new_user_password'
    # get '/users/password/edit(.:format)', to: 'devise/passwords#edit',   as: 'edit_user_password'
    # put '/users/password(.:format)',      to: 'devise/passwords#update', as: 'user_password'
    # post '/users/password(.:format)',     to: 'devise/passwords#create'
  # end
end
