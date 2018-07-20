Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login',  to: 'devise/sessions#new'
  end

  root to: 'toppages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
