Rails.application.routes.draw do

  #Вложенный маршрут
  resources :posts do
    resources :comments
  end


  root "pages#home"
  get "/contact", to: "pages#contact"
 
end
