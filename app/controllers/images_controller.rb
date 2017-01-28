class ImagesController < ApplicationController
  def index
    @images = Image.all
    #rails will by default render views/images/index.html.erb
    #this variable can be used in the view even though it is defined in the controller
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
      if @image.save
        redirect_to images_url
      else
      render :new
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_url
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])

    if @image.update_attributes(image_params)
      redirect_to "/images/#{@image.id}"
    else
      render :edit
    end
  end

  private
  def image_params
    params.require(:image).permit(:artist, :title, :url)
  end

end
