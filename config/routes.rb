Rails.application.routes.draw do
  devise_for :users
  get '/gallery' => 'gallery#index', as: :gallery
  get '/contact' => 'contact#index', as: :contact
  get '/about' => 'about#index', as: :about

  get '/home' => 'home#index', as: :home

  resources :newsposts
  resources :instructors
  resources :classes

  root 'home#index'
end
