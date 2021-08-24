Rails.application.routes.draw do
  get 'grade/new'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root 'homes#index'
end
