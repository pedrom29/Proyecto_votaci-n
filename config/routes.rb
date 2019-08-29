Rails.application.routes.draw do
  get 'users/index'
  get 'users/dashboard'
  get 'users/home'
  get 'users/profile'


  resources :parliamentaries
  resources :districts
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
    }

   resources :users

   root 'users#home'
   
 

  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
