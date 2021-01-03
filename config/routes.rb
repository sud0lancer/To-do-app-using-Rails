Rails.application.routes.draw do
  get "/home", to: "home#index"
  root "home#index"

  resources :todos do
    collection do
      get 'prev'
    end
  end
  # get "/prev", to: "todos#prev"

  get "/aboutus", to: "aboutus#index"
  get "/faqs", to: "faqs#index"
  get "/support", to: "support#index"
end
