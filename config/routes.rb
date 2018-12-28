Rails.application.routes.draw do
  # devise_for :users, :skip => [:registrations] , controllers: {
  #   sessions: 'users/sessions'
  # }
  # as :user do
  #   get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
  #   put 'users' => 'devise/registrations#update', :as => 'user_registration'
  # end

  get '/gallery' => 'gallery#index', as: :gallery
  get '/contact' => 'contact#index', as: :contact
  get '/about' => 'about#index', as: :about
  get '/home' => 'home#index', as: :home

  resources :newsposts
  resources :instructors
  resources :classes

  root 'home#index'
end
