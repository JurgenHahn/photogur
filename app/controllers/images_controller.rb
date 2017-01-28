class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  
  #how does this talk to routes.rb and index.html.erb?
end
