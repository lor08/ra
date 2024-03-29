Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'static_pages#index'

  #get 'static_pages/index'
  match '/gps',  to: 'static_pages#gps', via: 'get'
  match '/graphics',  to: 'static_pages#graphics', via: 'get'
  match '/tables',  to: 'static_pages#tables', via: 'get'
  match '/weather',  to: 'static_pages#weather', via: 'get'
  match '/ztd',  to: 'static_pages#ztd', via: 'get'
  match '/tec',  to: 'static_pages#tec', via: 'get'
  match '/about',  to: 'static_pages#about', via: 'get'
  match '/rinex',  to: 'static_pages#rinex', via: 'get'
  match '/signup',  to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

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
