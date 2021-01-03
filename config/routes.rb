Rails.application.routes.draw do
  get "/home", to: "home#index"
  root "home#index"

  get "/todos", to: "todos#index"
end
