Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/about'
  get 'pages/learnmore'

  resources :leads, only: [ :new, :create ]
  resources :applicants, only: [ :new, :create ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
