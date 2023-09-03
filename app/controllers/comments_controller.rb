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
end
