class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
    render :index
  end

  def create
    @upload = Upload.create(
      title: params[:title],
    )
    render :show
  end

  def show
  end
end
