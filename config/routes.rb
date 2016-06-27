Rails.application.routes.draw do
  get '/fallen_heroes' => 'fallen_heroes#index'
  get '/fallen_heroes/new' => 'fallen_heroes#new'
  post '/fallen_heroes' => 'fallen_heroes#create'
  get '/fallen_heroes/:id' => 'fallen_heroes#show'
  get '/fallen_heroes/:id/edit' => 'fallen_heroes#edit'
  patch '/fallen_heroes/:id' => 'fallen_heroes#update'
  delete '/fallen_heroes/:id' => 'fallen_heroes#destroy'
################################################################
end