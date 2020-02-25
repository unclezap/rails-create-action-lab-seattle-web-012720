Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new]
  post 'student/create', to: 'students#create', as: 'create_student'
  get '/student/:id', to: 'students#show', as: 'student'
end
