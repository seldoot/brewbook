Rails.application.routes.draw do

  root "brewer#show"

  get 'static_pages/home'

  get 'static_pages/about'

  resources :brewer do
  	resources :recipes
  end

  resources :recipes do
  	resources :ingredients
  	resources :directions
  	resources :batches
  end
  

end
