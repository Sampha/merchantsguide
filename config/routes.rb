Rails.application.routes.draw do
  resources :mineral_calculations
  resources :calculations
  resources :minerals
  resources :alien_numerals
  resources :roman_numerals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard#dashboard"
end
