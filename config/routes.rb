Rails.application.routes.draw do

  root to: 'static_pages#home'

  get '/event/:id', to: 'event#show'

  get '/about', to: 'static_pages#about'
  get '/welcome', to: 'static_pages#welcome'
  get '/event', to: 'event#index'
  get '/join', to: 'static_pages#join'
  get '/contact', to: 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
