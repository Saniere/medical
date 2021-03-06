Medical::Application.routes.draw do
  get "users/signup"
  post "users/signup_complete"
  get "users/login"
  post "users/login_complete"
  get "users/logout_complete"
  root "checkup#charts_mine"
  get "/:category" => 'checkup#charts_category'
  get "checkup/show/:id" => 'checkup#show'
  get "checkup/write1"
	post "checkup/write1_complete"
  get "checkup/write2/:id" => 'checkup#write2' 
	post "checkup/write2_complete"
  get "checkup/write3"
  get "checkup/write_complete"
  get "checkup/edit"
  get "checkup/edit_complete"
  get "checkup/delete_complete"
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
