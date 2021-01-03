Rails.application.routes.draw do
  get "/home", to: "home#index"
  root "home#index"

  resources :todos

  get "/aboutus", to: "aboutus#index"
  get "/faqs", to: "faqs#index"
  get "/support", to: "support#index"
end
