class AttachmentsController < ApplicationController
  def create
    uploader = SirTrevorImageUploader.new
    if uploader.store! params[:attachment][:file]
      render json: { file: { url: uploader.url } }, status: 200
    else
      render :json => uploader.errors, status: 422
    end 
  end
end
