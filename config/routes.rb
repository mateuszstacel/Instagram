Rails.application.routes.draw do

  get 'photo/index'
  get 'photo/store'
  post 'photo/store'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do

    authenticated :user do
      root 'photo#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end

  end

end
