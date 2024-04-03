Rails.application.routes.draw do
  # get "welcome/index"
  match ":controller(/:action(/:id))", :via => :get
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "rules#index"
end
