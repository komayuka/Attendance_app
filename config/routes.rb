Rails.application.routes.draw do
  get 'users/show'
  root 'homes#top'

  devise_for :users, :controllers => {
    :registations => 'users/registations',
  }

  devise_for :admins
  resources  :users, only: [:show, :edit, :update]
  resources :animes


end
