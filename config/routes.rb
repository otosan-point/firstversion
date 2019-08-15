Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
 root to: 'top#index'
 resources :top
 resources :kids do
   resources :promises do
    resources :opactions, only: [:new, :create]
   end
 end
 resources :users, only: [:show]
 resources :promises, only: [:show, :create, :new]
 resources :opactions, only: [:new, :create, :update, :edit]
 resources :kids, only: [:show, :new, :create]
 resources :messageboards, only: [:show, :new, :create, :update, :edit]
end
