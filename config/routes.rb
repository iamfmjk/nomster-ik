Rails.application.routes.draw do
  root 'places#index'
  resource :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
