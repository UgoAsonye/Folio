class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def create
    @comment = Comment.create(
      user_id: params[:user_id],
      upload_id: params[:upload_id],
      comment: params[:comment],
    )
    render :show
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
end
