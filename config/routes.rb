Rails.application.routes.draw do
 
 get '/students/:id/activate', to: 'students#activate'
 resources :students, only:  [:show, :index, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
