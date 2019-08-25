Rails.application.routes.draw do
  get 'users/index'
  resources :parliamentaries
  resources :districts
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
    }

   resources :users
   
 

  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
