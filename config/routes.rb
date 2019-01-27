Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index'
  get '/tasks/:task_id', to: 'tasks#show'
  post '/completed_task/:task_id', to: 'tasks#update'

  get '/tasks_count', to: 'tasks#count'

  post '/assign_task', to: 'user_tasks#create'

  get '/users/:user_id', to: 'users#show'
  post '/awaiting/:user_id', to: 'users#update'
  post '/user_needs_help/:user_id', to: 'users#needs_help'

  get '/time_remaining', to: 'timers#show'
  post '/timers', to: 'timers#create'
end
