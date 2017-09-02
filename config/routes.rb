Rails.application.routes.draw do
  
  resources :notices

  resources :meetings
  
  
  get 'welcome/come'
  post '/tinymce_assets' => 'tinymce_assets#create'
  get 'introduce/facility'
  get 'introduce/scenery'
  get 'introduce/food'
  #예약
  get 'welcome/reserve'

  #객실정보
  get 'room/room1'
  get 'room/room2'
  get 'room/room3'
  get 'room/room4'
  get 'test/index'
  get 'home/first'

  devise_for :users
  resources :posts
  get '/introduce', to: 'welcome#introduce'
  get '/home', to: 'welcome#home'
  root 'home#first'
  get '/test', to: 'test#index'
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
