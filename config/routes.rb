Rails.application.routes.draw do
  resources :projects
  get '/projects/', to: 'projects#index'
  get '/projects/:id', to: 'projects#show'
  
  resources :updates
  get '/updates/', to: 'updates#index'
  

  # ============== Auth routes =====================
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  
  resources :users
  get '/users/:id/projects', to: 'users#user_projects_index'
  get 'users/:id/team', to: 'users#user_team_index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
