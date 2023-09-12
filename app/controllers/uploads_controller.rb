class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
    render :index
  end

  def create
    image_url = params[:image_url]
    if params[:image_file]
      response = Cloudinary::Uploader.upload(params["image_file"], resource_type: :auto)
      image_url = response["secure_url"]
    end
    @upload = Upload.create(
      title: params[:title],
      description: params[:description],
      image: image_url,
      user_id: params[:user_id],
    )
    if @upload.valid?
      render :show
    else
      render json: { error: @upload.errors.full_messages }, status: 422
    end
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

  def destroy
    @upload = Upload.find_by(id: params[:id])
    @upload.destroy
    render json: { message: "Upload has been deleted." }
  end
end
