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

    resources :shops, only: [:index, :show]

    resources :bookings, only: [:new, :create] do
      collection do
        get 'finish'
      end
    end

    resource :contacts, only: [:new, :create] do
      collection do
        get 'finish'
      end
    end
  end

  #shopサイト
  namespace :admin do
    #idを割り振る必要がないため、単数形resourceに変更(5/26)
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
