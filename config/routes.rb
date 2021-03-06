Rails.application.routes.draw do


  get 'books/book'
  get '/about',to: 'users#about'

  devise_for :users, controllers: {
    confirmations: 'devise/confirmations',
    passwords:     'devise/passwords',
    registrations: 'devise/registrations',
    sessions:      'devise/sessions',
  }
  # devise_for :users
  resources :users, only: [:index, :show]
  resources :posts
  root 'users#home'
end
