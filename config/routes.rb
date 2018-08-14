Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "tasks#index"  #GET /tasks
  
  get 'new', to: "tasks#new", as: :new  #GET new
  post'tasks', to: "tasks#create" # POST /tasks
  
  get 'tasks/:id', to: "tasks#show", as: :task  #GET tasks/:id
 
  get 'tasks/:id/edit', to: "tasks#edit" , as: :edit #GET tasks/:id/edit 
  patch 'tasks/:id', to: "tasks#update"   #PATCH tasks/:id
  
  delete 'tasks/:id', to: "tasks#destroy",  as: :destroy #DELETE tasks/:id

end
