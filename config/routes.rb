Rails.application.routes.draw do
  namespace :guest do
    get 'schools/show'
  end
  namespace :guest do
    get 'cities/show'
  end
  namespace :guest do
    get 'countries/index'
    get 'countries/show'
  end
  namespace :guest do
    get 'contacts/index'
  end
  namespace :guest do
    get 'consultations/index'
  end
  namespace :guest do
    get 'faqs/index'
  end
  namespace :guest do
    get 'maps/map'
  end
  namespace :guest do
    get 'brochures/index'
  end
  namespace :guest do
    get 'guests/show'
    get 'guests/edit'
    get 'guests/update'
  end
  namespace :admin do
    get 'guests/index'
    get 'guests/show'
    get 'guests/edit'
    get 'guests/update'
    get 'guests/quit'
    get 'guests/out'
  end
  namespace :admin do
    get 'faqs/index'
    get 'faqs/new'
    get 'faqs/show'
    get 'faqs/edit'
    get 'faqs/create'
    get 'faqs/update'
  end
  namespace :admin do
    get 'brochures/index'
    get 'brochures/new'
    get 'brochures/show'
    get 'brochures/edit'
    get 'brochures/create'
    get 'brochures/update'
  end
  namespace :admin do
    get 'schools/index'
    get 'schools/new'
    get 'schools/show'
    get 'schools/edit'
    get 'schools/create'
    get 'schools/update'
  end
  namespace :admin do
    get 'cities/index'
    get 'cities/new'
    get 'cities/show'
    get 'cities/edit'
    get 'cities/create'
    get 'cities/update'
  end
  namespace :admin do
    get 'countries/index'
    get 'countries/new'
    get 'countries/show'
    get 'countries/edit'
    get 'countries/create'
    get 'countries/update'
  end
  namespace :admin do
    get 'tops/top'
  end
  devise_for :guests
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
