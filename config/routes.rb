Rails.application.routes.draw do
  root 'images#index'
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'images' => 'images#index'
  #
  # post 'images' => 'images#create'
  # get 'images/new' => 'images#new'
  #
  # get 'images/:id/edit' => "images#edit", as: 'edit_image'
  # patch 'images/:id' => "images#update"
  #
  # get 'images/:id' => 'images#show', as: 'image'
  # #find out what as: 'image'
  #
  # delete 'images/:id' => 'images#destroy', as: 'delete_image'

end
