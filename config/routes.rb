Rails.application.routes.draw do
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
