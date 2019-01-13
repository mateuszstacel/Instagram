Rails.application.routes.draw do

  devise_for :users

  resources :picutres
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do

    authenticated :user do
      root 'picutres#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end

  end

end
