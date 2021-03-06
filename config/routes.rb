Rails.application.routes.draw do
  
  

  resources :loads
  resources :holds
  resources :companies
  get 'welcome/index'
devise_for :users, controllers:{
  sessions: 'users/sessions'
 } 
 
devise_scope :users do
  get 'signin', to: 'users/sessions#new'
  get 'signout', to: 'users/registration#destroy'
end
  resources :users
  
root "welcome#index"  

  get 'loads/import'
  resources :loads do
  	collection { post :import}
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
