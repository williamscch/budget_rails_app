Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'groups#index', as: :authenticated_root
  end

  resources :groups do
    resources :expenses
  end
  resources :users, only: %i[edit update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  # Defines the root path route ("/")
  root 'users#splash'
end
