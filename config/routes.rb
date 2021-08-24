Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  devise_scope :user do
    # TIPS: ユーザー登録失敗のリダイレクトのエラーを防ぐ https://github.com/heartcombo/devise/blob/master/app/controllers/devise/registrations_controller.rb
    get '/users', to: 'devise/registrations#new'
  end
  resources :grades
  root 'grades#index'
end
