class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    # @picture = Picture.new
    @picture = current_user.pictures.build
  end

  def create
    # @picture = Picture.new(picture_params)
    @picture = current_user.pictures.build(picture_params)
    if @picture.save
      redirect_to @picture, notice: "Picutre Posted"
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update(picture_params)
      redirect_to @picture, notice: "Picture Edited"
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to authenticated_root_path
  end

  def upvote
    @picture = Picture.find(params[:id])
    @picture.upvote_by current_user
    redirect_to authenticated_root_path
  end


  private

  def picture_params
    params.require(:picture).permit(:title, :description, :image)
  end



end
