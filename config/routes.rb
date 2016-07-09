Rails.application.routes.draw do
  devise_for :users
  root to: 'fallen_heroes#index'
  get '/fallen_heroes' => 'fallen_heroes#index'
  get '/fallen_heroes/new' => 'fallen_heroes#new'
  post '/fallen_heroes' => 'fallen_heroes#create'
  get '/fallen_heroes/:id' => 'fallen_heroes#show'
  get '/fallen_heroes/:id/edit' => 'fallen_heroes#edit'
  patch '/fallen_heroes/:id' => 'fallen_heroes#update'
  delete '/fallen_heroes/:id' => 'fallen_heroes#destroy'
  ##########################################################
  get '/events' => 'events#index'
  get '/events/new' => 'events#new'
  post '/events' => 'events#create'
  get '/events/:id' => 'events#show'
  get '/events/:id/edit' => 'events#edit'
  patch '/events/:id' => 'events#update'
  delete '/events/:id' => 'events#destroy'
  ##########################################################
  get '/members' => 'members#index'
  get '/members/new' => 'members#new'
  post '/members' => 'members#create'
  get '/members/:id' => 'members#show'
  ##########################################################
  get '/donations/new' => 'donations#new'
  post '/donations' => 'donations#create'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
