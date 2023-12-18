Rails.application.routes.draw do
  devise_for :users
  # This is a useful method that defines all the required routes related to user authentication like /users/sign_in, /users/sign_out, and /users/password/new. Devise takes care of all of that for you and even keeps the routes file clean.
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "twitter_landing_page#index"
end
