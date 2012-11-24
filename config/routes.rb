PalashBlog::Application.routes.draw do


  match "comments/new",:to=>"comments#new"
  match "comments/create", :to=>"comments#create"

  #get "sessions/new"

  match "blogs", :to=>"blogs#home"

  match "categories/new", :to=>"categories#new"
  match "categories/create", :to=>"categories#create"
  match "categories/show", :to=>"categories#show"

  match "books/new", :to=>"books#new"
  match "books/create", :to=>"books#create"
  match "books/show", :to=>"books#show"
  match "books/edit", :to=>"books#edit"
  match "books/update", :to=>"books#update"
  match "books/delete", :to=>"books#delete"

  match "/new", :to=>"blogs#new"

  match "/show", :to=>"blogs#show"

  match "blogs/edit",  :to=>"blogs#edit"
  match "blogs/create", :to=>"blogs#create"
  match "blogs/update",  :to=>"blogs#update"#,:as=>"blog_update"

  match "blogs/delete", :to=>"blogs#delete"

  #get "users/new"
  #resources :users
   match "users/signup", :to=>"users#new"
   match "users/show"  , :to=>"users#show"
   match "users/create", :to=> "users#create"
  match"users/edit", :to=>"users#edit"
  match"users/update", :to=>"users#update"
  match "users/delete", :to=>"users#delete"
   #match ""

  #get "pages/home"
  root :to=>"pages#home"
  match "/contact", :to=>"pages#contact"
  match "/about", :to=>"pages#about"
  match"/help", :to=>"pages#help"

  match "sessions/new", :to=>"sessions#new"
  match "sessions/create", :to=>"sessions#create"
  match "/signout", :to=>"sessions#destroy"

  #get "pages/contact"

  #get "pages/help"

  #get "pages/about"

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
