class AttachmentsController < ApplicationController
  def create
    #TK AUTHORIZATION
    uf=UploadedFile.new()
    uf.the_file=params[:attachment][:file]
    if uf.save!
      render json: { file: { url: uf.the_file.url(:medium) } }, status: 200
    else
      render :json => uploader.errors, status: 422
    end 
  end
end
