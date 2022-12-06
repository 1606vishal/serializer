Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :dogs, only: [:index ,:show]
  resources :people, only: [:index, :show]
end