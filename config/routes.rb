Rails.application.routes.draw do

  root "static_pages#home"

  get 'static_pages/home'

  get 'static_pages/about'

  resources :brewer do
  	resources :recipes do
      resources :ingredients
      resources :directions
      resources :batches
   end 	
  end

  devise_for :brewers
  

end
