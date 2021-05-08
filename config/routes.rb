Rails.application.routes.draw do

  devise_for :guests
  devise_for :admins


  scope module: :guest do
    root to: 'homes#top'
     get 'homes/about'
    resources :schools
    resources :cities
    resources :countries
    resources :contacts
    resources :consultations
    resources :faqs
    resources :maps
    resources :brochures
    resources :guests
  end

  namespace :admin do
    resources :guests
    resources :faqs
    resources :brochures
    resources :schools
    resources :cities
    resources :countries
    resources :tops
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
