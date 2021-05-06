Rails.application.routes.draw do
  get 'tasks/index'

  post 'tasks/new', to: 'tasks#new'
  get '/tasks', to: 'tasks#index'
  post '/tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new'

  get 'tasks/:id/edit', to: 'tasks#edit'

  get 'tasks/:id', to: 'tasks#show'

  put 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks
end
