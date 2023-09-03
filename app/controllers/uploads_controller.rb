class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
    render :index
  end

  def create
    @upload = Upload.create(
      title: params[:title],
      description: params[:description],
      image: params[:image],
      user_id: params[:user_id],
    )
    render :show
  end

  def show
    @upload = Upload.find_by(id: params[:id])
    render :show
  end

  def update
    @upload = Upload.find_by(id: params[:id])
    @upload.update(
      title: params[:title] || @upload.title,
      description: params[:description] || @upload.description,
      image: params[:image] || @upload.image,
      user_id: params[:user_id] || @upload.user_id,
    )
    render :show
  end
end
