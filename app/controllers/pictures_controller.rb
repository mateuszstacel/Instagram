class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to authenticated_root_path
    end
  end


  private

  def picture_params
    params.require(:picture).permit(:title, :description)
  end

end
