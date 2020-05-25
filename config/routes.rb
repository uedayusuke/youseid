Rails.application.routes.draw do
  namespace :public do
    get 'reservations/finish'
  end
  namespace :public do
    get 'contacts/new'
    get 'contacts/finish'
  end
  namespace :public do
    get 'bookings/new'
    get 'bookings/finish'
  end
  namespace :public do
    get 'shops/show'
  end
  namespace :public do
    get 'post_images/index'
    get 'post_images/show'
  end
  namespace :public do
    get 'users/top'
    get 'users/about'
    get 'users/show'
    get 'users/edit'
    get 'users/cancel'
  end
  devise_for :shops, contorollers: {
  	sessions: 'shops/sessions',
  	passwords: 'shops/passwords',
  	registrations: 'shops/registrations'
  }
  devise_for :users, contorollers: {
  	sessions: 'users/sessions',
  	passwords: 'users/passwords',
  	registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
