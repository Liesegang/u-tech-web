Rails.application.routes.draw do

  root to: 'static_pages#home'

  resources :events, only: [:index, :show]
  resources :members

  get 'contacts/index'
  post 'contacts/confirm'
  post 'contacts/thanks'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  get '/about'   => 'static_pages#about'
  get '/welcome' => 'static_pages#welcome'
  get '/join'    => 'members#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
