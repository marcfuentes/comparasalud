Comparasalud::Application.routes.draw do
  resources :insurance_providers


  resources :consultations


  resources :consultation_types


  resources :comunes


  resources :regions


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end