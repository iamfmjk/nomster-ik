class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @comment = @place.comments.create(comment_params.merge(user: current_user)) 
    redirect_to place_path(@place)
  end

  def destroy
    @place = Place.find(params[:place_id])
    @comment = Comment.find(params[:id])
    if @comment.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
    @comment.delete
    redirect_to place_path(@place)
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :rating)
  end
end
