Rails.application.routes.draw do
  resources :assessments
  resources :beds
  resources :pocs
  resources :patients
  scope :api do
     resources :users, except: [:create]

     post 'register', to: 'auth#register'
     post 'login', to: 'auth#login'
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
