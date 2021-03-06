SoccerToMe::Application.routes.draw do
  #get "admin/index"
  
  match "admin" => 'admin#index', :as => 'admin'

  resources :provinces

  resources :addresses

  resources :customers

  resources :orders

  resources :product_orders

  #get "store/index"
  root :to => 'store#index'
  
  match "store/boots" => "store#boots", :as => 'boots', :via => :get
  
  match "store/kits" => "store#kits", :as => 'kits', :via => :get
  
  match "store/results" => "store#search_results", :as => 'results', :via => :post
  
  match "store/about" => "store#about", :as => "about", :via => :get
  
  match "store/contact" => "store#contact", :as => "contact", :via => :get
  
  match "store/all" => "store#all", :as => "all", :via => :get
  
  match "store/:id" => "store#show", :as => "store", :via => :get
  
  #get "store/show"

  resources :images

  resources :reviews

  resources :categories

  resources :manufacturers

  resources :products
  
  #match 'products' => 'products#index', :via => :get, :as => 'products'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
