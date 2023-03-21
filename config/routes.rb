Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get '/centers', to: 'centers#index'
      get '/centers/:id', to: 'centers#show'
      post '/center/add', to: 'centers#create'
      delete '/center/delete/:id', to: 'centers#destroy'
      patch '/center/update/:id', to: 'centers#update'

    end
  end
end
