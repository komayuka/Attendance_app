Rails.application.routes.draw do
  root 'homes#top'

  devise_for :users

  devise_for :admins


end
