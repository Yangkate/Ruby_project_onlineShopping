Rails.application.routes.draw do
  resources :reviews

  resources :promotions

  devise_for :users, :controllers => { :sessions => 'sessions' } #added by Maturos K.


  resources :stores

  resources :store_categories

  resources :shopping_malls do
    resources :stores #added by Maturos K.
    resources :reviews, :only => [:create] #added by Maturos K.
  end

  get 'home/index'

  resources :roles

  resources :cities

  resources :countries

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  get 'home/users' => 'home#manage_user', as: :manage_user
  get 'home/change_user_role' => 'home#change_user_role', as: :change_user_role
  get 'home/delete_user' => 'home#delete_user', as: :delete_user
  get 'promotion/store' => 'promotions#promotion_of_store', as: :promotion_of_store
  get 'promotion/store_show' => 'promotions#promotion_of_store_show', as: :promotion_of_store_show
  get 'promotion/shopping_mall' => 'promotions#promotion_of_shopping_mall', as: :promotion_of_shopping_mall
  get 'review/shopping_mall' => 'reviews#review_of_shopping_mall', as: :review_of_shopping_mall
  get 'shopping_mall/search' => 'shopping_malls#search_shopping_mall', as: :search_shopping_mall
  get 'store/view_store' => 'stores#view_store', as: :view_store
  get 'store/search_store' => 'stores#search_store', as: :search_store


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
