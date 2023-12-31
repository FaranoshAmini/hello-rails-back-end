# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :greetings, only: [:index] do
      collection do
        get 'random_greeting'
      end
    end
  end
end
