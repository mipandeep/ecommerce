Rails.application.routes.draw do
  
  get 'categories/show'
  get 'pages/show'
  get 'product/index'
  get 'product/show'
  resources :product ,only:[:index,:show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  root to: 'product#index'
  get '/:permalink' , to: 'pages#permalink' , as: 'permalink'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
