Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :utilisateurs
  resources :kots
  resources :villes
  resources :pages

  root "pages#index"

end
