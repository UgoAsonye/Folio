class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def create
    @comment = Comment.create(
      user_id: current_user.id,
      upload_id: params[:upload_id],
      comment: params[:comment],
    )

    if @comment.valid?
      render :show
    else
      render json: { error: @comment.errors.full_messages }, status: 422
    end
  end

  def show
    @comment = Comment.find_by(id: params[:id])
    render :show
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.update(
      user_id: params[:user_id] || comment.user_id,
      upload_id: params[:upload_id] || comment.upload_id,
      comment: params[:comment] || comment.comment,
    )
    render :show
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    render json: { message: "Comment has been deleted" }
  end
end
