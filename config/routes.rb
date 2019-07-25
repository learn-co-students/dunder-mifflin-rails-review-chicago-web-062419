Rails.application.routes.draw do
  resources :dogs
  resources :employees
  get "/home", to: "employees#home", as: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
