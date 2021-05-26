Rails.application.routes.draw do

  namespace :guest do
    get 'searches/search'
  end
  devise_for :guests
  devise_scope :guest do
    post 'guests/user_sign_in', to: 'guests/sessions#user_sign_in'
  end
  # ゲストログイン

  devise_for :admins

  scope module: :guest do
    root to: 'homes#top'
     get 'homes/about'
    resources :guests, only: [:edit, :update]
    resources :contacts, only: [:index, :new, :create]
      post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
      post 'contacts/back', to: 'contacts#back', as: 'back'
      get 'done', to: 'contacts#done', as: 'done'
    resources :faqs, only: [:index]
    resources :consultations, only: [:index]
    resources :brochures, only: [:index]
    resources :countries, only: [:index, :show] do
      resources :schools, only: [:index, :show]
    end
    # 国の一覧ページに国id別の語学学校詳細(show)のリンクを表示させるため
    get "search" => "searches#search"
  end

  namespace :admin do
    resources :guests, only: [:index, :edit, :update]
    resources :brochures
    resources :countries
    resources :schools
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
