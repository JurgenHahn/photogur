Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'images' => 'images#index'
#why is index.html.erb the coresponding page for /images????
#does this line of code set the view and call the index method both?
end
