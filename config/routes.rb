Rails.application.routes.draw do
  devise_for :admins
  root to: "pages#index"

  resources :pages do 
  	 resources :comments
  end
end
