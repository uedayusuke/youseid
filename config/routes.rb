Rails.application.routes.draw do
  devise_for :shops, controllers: {
    sessions: 'shops/sessions',
    passwords: 'shops/passwords',
    registrations: 'shops/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }


  #userサイト
  root 'public/users#top'
  put '/user' => 'public/users#destroy'
  scope module: :public do
    #idが必要ないと考えた為、単数形resource
    resource :user, only: [:show, :edit, :update] do
      collection do
        get 'cancel'
        get 'about'
      end
    end

    resources :post_images, only: [:index, :show] do
      resource :reservation, only: [:create] do
        collection do
          get 'finish'
        end
      end
      resource :comment, only: [:create]
      resource :fovorite, only: [:create, :destroy]
    end

    #shop_idが必要だった為、contact/bookingをネスト(6/1)
    resources :shops, only: [:index, :show] do
      resource :contacts, only: [:new, :create] do
        collection do
          get 'finish'
        end
      end
      resources :bookings, only: [:new, :create] do
        collection do
          get 'finish'
        end
      end
    end

  end

  #shopサイト
  namespace :admin do
    #idが必要ないと考えた為、単数形resource
    resource :shop, only: [:show, :edit, :update, :destroy] do
      collection do
        get 'cancel'
      end
    end

    resources :post_images, only: [:new, :create, :show, :edit, :update]

    resources :reservations, only: [:index]

    resources :bookings, only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
