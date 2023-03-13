Rails.application.routes.draw do
    root 'tops#home'
    get '/home', to: 'tops#home'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    resources :users
    resources :skills, only: [:new,:edit,:update,:destroy,:create],except: [:show]
    resources :categories, except: [:index, :new, :create, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
