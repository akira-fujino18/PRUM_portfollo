Rails.application.routes.draw do
    root 'tops#home'
    get '/home', to: 'tops#home'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    post '/skills/#{@user.id}/update', to: 'skills#update'
    delete '/skills/#{@user.id}/delete', to: 'skills#destroy'
    resources :users
    resources :skills, only: [:new,:edit,:update,:destroy]
    resources :categories, except: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :skills, except: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
