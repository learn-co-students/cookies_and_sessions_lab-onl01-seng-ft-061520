Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # EXPLANATION: root Creates '/' that goes to the products controller index action
  root to: 'products#index'

  # EXPLANATION: as: "products" Creates products_path that goes to products controller add action
  post '/products', to: 'products#add', as: "products"
  # STORY:  When somebody types in URL /products
  #         Receive it as a post that goes to the products controller add action
  #         and name it =>>    as: "products"




  # get 'products/add'


end
