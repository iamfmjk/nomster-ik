class PhotosController < ApplicationController
before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @photo = @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  def destroy
    @place = Place.find(params[:place_id])
    @photo = Photo.find(params[:id])
    if @place.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
    @photo.delete
    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end


end
