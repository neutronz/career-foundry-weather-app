Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "weather#new"

  resources :weather, as: :weathers, only: [:new, :create, :show, :edit, :update]
  get '/weather', to: redirect('/weather/new')
end
