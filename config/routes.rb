Rails.application.routes.draw do
    root 'tops#home'
    get '/home', to: 'tops#home'
    get '/signup', to: 'users#new'
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
