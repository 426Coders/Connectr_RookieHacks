Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'chatroom#index'

  # Signup Route
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  #Login Routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #Message Route
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
