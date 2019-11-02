Rails.application.routes.draw do

  devise_for :users

  resource :users
  resource :events, except: :index
  resource :instructors, except: :index

  get '/gallery' => 'gallery#index', as: :gallery
  get '/contact' => 'instructors#index', as: :contact
  get '/about' => 'about#index', as: :about
  get '/classes' => 'events#index', as: :classes

  root to: "home#index"
end
