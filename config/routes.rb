Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :groups do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  get 'created_by_me', to: 'groups#created_by_me', as: 'created_by_me'
  post 'join_group/:id', to: 'user#join_group', as: 'join_group'
  post 'leave_group/:id', to: 'user#leave_group', as: 'leave_group'
  post 'exit_group/:id', to: 'user#exit_group', as: 'exit_group'

end
