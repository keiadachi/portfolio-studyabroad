Rails.application.routes.draw do

  devise_for :guests
  devise_for :admins

  scope module: :guest do
    root to: 'homes#top'
     get 'homes/about'
    resources :guests, only: [:edit, :update]
    resources :contacts, only: [:index]
    resources :faqs, only: [:index]
    resources :consultations, only: [:index]
    resources :brochures, only: [:index]
    resources :countries, only: [:index, :show] do
      resources :schools, only: [:index, :show]
    end
    # 国の一覧ページに国id別の語学学校詳細(show)のリンクを表示させるため
    resources :cities, only: [:index, :show]
    resources :maps
  end

  namespace :admin do
    resources :tops, only: [:index]
    resources :guests, only: [:index, :edit, :update]
    resources :faqs, only: [:index, :new, :edit, :create, :update]
    resources :brochures, only: [:index, :new, :edit, :create, :update]
    resources :countries
    resources :schools, only: [:index, :new, :edit, :create, :update]
    resources :cities, only: [:index, :new, :edit, :create, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
