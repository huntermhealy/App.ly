Rails.application.routes.draw do
	root 'topics#index'
  resources :categories
  resources :applications
  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
