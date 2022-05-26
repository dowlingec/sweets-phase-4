Rails.application.routes.draw do
  resources :vendor_sweets
  resources :vendors, only: [:index, :show]
  resources :sweets, only:[:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
