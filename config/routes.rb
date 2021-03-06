Rails.application.routes.draw do
  resources :events
  
  get 'registration/index'

  devise_for :users
  get 'welcome/index'

  # registration home page
  get 'registration/index'

  # route to volunteer registration form
  get 'registration/volunteer_registration', to: 'registration#volunteer_registration'
  post 'registration/volunteer_registration', to: 'registration#volunteer_registration_process'

  # Admin panel
  get 'admin', to: 'admin#index'
  get 'admin/volunteers', to: 'admin#volunteers'
  post 'admin/volunteer_approve', to: 'admin#volunteer_approve'
  post 'admin/volunteer_disapprove', to: 'admin#volunteer_disapprove'
  get 'admin/massvolunteers', to: 'admin#massvolunteers'
  post 'admin/massvolunteersprocess', to: 'admin#massvolunteersprocess'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
