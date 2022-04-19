# frozen_string_literal: true

Rails.application.routes.draw do
  root "kudos#index"
  resources :kudos
  devise_for :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
