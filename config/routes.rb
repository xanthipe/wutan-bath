Rails.application.routes.draw do

  devise_for :users

  devise_scope :users do
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
    get 'forgot_password', to: 'devise/passwords#new'
    get 'reset_password', to: 'devise/passwords#edit'
  end

  resources :users
  resources :events, except: :index
  resources :instructors, except: :index

  get '/gallery' => 'gallery#index', as: :gallery
  get '/contact' => 'instructors#index', as: :contact
  get '/about' => 'about#index', as: :about
  get '/classes' => 'events#index', as: :classes

  root to: "home#index"
end
