Rails.application.routes.draw do
  
  root 'feeds#top_page.html'
  
  get 'sessions/new'
  
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :feeds
  
  resources :facebuuks do
      
    collection do
      post  :confirm
    end
  
  
  
  #resources :sessions, only: [:new, :create, :destroy]
end
end
