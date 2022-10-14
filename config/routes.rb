Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :groups do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  post 'join_group/:id', to: 'user#join_group', as: 'join_group'
  post 'leave_group/:id', to: 'user#leave_group', as: 'leave_group'
  post 'exit_group/:id', to: 'user#exit_group', as: 'exit_group'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
