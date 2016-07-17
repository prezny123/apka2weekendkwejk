Rails.application.routes.draw do
  resources :mems do
    collection do
        get 'my'
        get 'inactive'
      end
    end
  root 'mems#index'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
        
        
  
end
