Rails.application.routes.draw do
  resources :stats
  get 'subscriptions/index'
  post 'subscriptions/index'
  get 'subscriptions/add'
  get 'subscriptions/list'
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
  root 'hero#show' 
  get 'journal' => 'journal#show', as: :show_journal
  get 'social' => 'social#show', as: :show_social
  get 'hero' => 'hero#show', as: :show_hero
  get 'hero/captain' => 'hero#captain', as: :captain_hero
  get 'hero/thor' => 'hero#thor', as: :thor_hero
  get 'hero/spidey' => 'hero#spidey', as: :spidey_hero
  get 'hero/panther' => 'hero#panther', as: :panther_hero
  get 'hero/hulk' => 'hero#hulk', as: :hulk_hero
  get 'hero/ghost' => 'hero#ghost', as: :ghost_hero
  post 'journal/update' => 'journal#update', as: :update_journal
  delete 'journal/delete' => 'journal#delete', as: :delete_journal
  get 'fitbit/:resource/:date.json' => 'fitbit_api#data_request'
  get 'fitbit_api/get_call' => 'fitbit_api#get_call'
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  
  
end
