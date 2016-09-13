Rails.application.routes.draw do
  devise_for :users
  get '/' => 'static_pages#home'
  ##########################################################
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
  get '/members/:id/edit' => 'members#edit'
  patch 'members/:id' => 'members#update'
  ##########################################################
  post '/checkout' => 'donations#checkout'
  get '/donations' => 'donations#index'
  get '/donations/new' => 'donations#new'
  post '/donations' => 'donations#create'
  get 'donations/:id' => 'donations#show'
  get '/donations/:id/edit' => 'donations#edit'
  patch '/donations/:id' => 'donations#update'
  ##########################################################
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'
  ##########################################################
  get '/blog_posts' => 'blog_posts#index'
  get '/blog_posts/new' => 'blog_posts#new'
  post '/blog_posts' => 'blog_posts#create'
  get '/blog_posts/:id' => 'blog_posts#show'
  get '/blog_posts/:id/edit' => 'blog_posts#edit'
  patch '/blog_posts/:id' => 'blog_posts#update'
  delete '/blog_posts/:id' => 'blog_posts#destroy'
  ##########################################################
  get '/about-us' => 'abouts#index'
  get '/history' => 'abouts#history'
  get '/leadership' => 'abouts#leadership'
  get '/testimonial' => 'abouts#testimonial'
  get '/faq' => 'abouts#faq'
  ##########################################################
  namespace :api do
    get '/events' => 'events#index'
  end

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
