Rails.application.routes.draw do
  # index page  
  root 'board#index'
  get 'board/index'

  # free board
  get 'board/create'
  get 'board/list'
  get 'board/read'
  post 'board/read'
  get 'board/update'
  get 'board/update/:update_id' => 'board#update'
  post 'board/update_ok/:id' => 'board#update_ok'
  get 'board/delete/:del_id' => 'board#delete'
  get 'board/detail/:detail_id' => 'board#detail'


  # lotto board
  get 'board/create_lotto'
  get 'board/list_lotto'
  post 'board/read_lotto' => 'board#read_lotto'
  get 'board/update_lotto'
  get 'board/update_lotto/:update_id' => 'board#update_lotto'
  post 'board/update_ok_lotto/:id' => 'board#update_ok_lotto'
  get 'board/delete_lotto/:del_id' => 'board#delete_lotto'
  get 'board/detail_lotto/:detail_id' => 'board#detail_lotto'
  
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
