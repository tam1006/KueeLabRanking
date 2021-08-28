Rails.application.routes.draw do
  root 'grades#index'

  # pages
  get 'help', to: 'pages#help'

  # devise
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  devise_scope :user do
    # TIPS: ユーザー登録失敗のリダイレクトのエラーを防ぐ https://github.com/heartcombo/devise/blob/master/app/controllers/devise/registrations_controller.rb
    get '/users', to: 'devise/registrations#new'
    get 'users/quit' => 'devise/registrations#quit'
  end

  # grades
  resources :grades
end
