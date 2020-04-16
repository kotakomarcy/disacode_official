class PictureController < ApplicationController
  before_action :set_picture, only:[:index, :show, :destroy]

  def index
    @picture_akira = Picture.where(name: "akira").order("created_at DESC").limit(3)
    # @picture_sin = Picture.includes(:pictures).where(name: "しんのすけ").order("created_at DESC").limit(3)
    # @picture_marcy = Picture.includes(:pictures).where(name: "まーしー").order("created_at DESC").limit(3)
    # @picture_live = Picture.includes(:pictures).where(name: "ライブ").order("created_at DESC").limit(3)
  end

  def show
    @picture_akira = Picture.where(name: "akira").order("created_at DESC").limit(3)

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
      @picture = Picture.all.includes(:id, :name, :image)
    end

end
