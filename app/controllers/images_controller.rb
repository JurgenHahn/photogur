class ImagesController < ApplicationController
  def index
    # @images = Image.all
    @most_recent_images = Image.most_recent_five
    @images_1_month = Image.created_before(1.day.ago)
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
        redirect_to root_url
      else
      render :new
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to root_url
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
