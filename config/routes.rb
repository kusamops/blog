Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'authentication#login'
  
  get "articles" => "article#index"
  get "home" => "pages#home" 
 
  get "logout" => "authentication#logout"
  get "login" => "authentication#login", as: "login"
  post "authenticate" => "authentication#authenticate", as: "authenticate"
end
