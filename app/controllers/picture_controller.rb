class PictureController < ApplicationController
  before_action :set_picture, only:[:show, :destroy]


  def new
    @picture = Picture.new
    @picture = Picture.includes(:picture).order("created_at DESC").limit(20)
  end

  def index
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to new_picture_path
    else
      render :index
    end
  end

  def show
  end

  def destroy
    if @picture.destroy
      redirect_to new_picture_path
    else
      redirect_to new_picture_path
    end
  end

  private

    def picture_params
      params.require(:picture).permit(:name, :image)
    end

    def set_picture
      @picture = Picture.find(params[:id])
    end

end
