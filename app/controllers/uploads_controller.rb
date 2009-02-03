class UploadsController < ApplicationController

  def edit
    @upload = Upload.find params[:id]
  end


  def update
    @upload = Upload.find params[:id]
    if @upload.update_attributes params[:upload]
      flash[:notice] = 'Upload was successfully updated.'
      redirect_to(@upload.dog)
    else
      render :action => "edit"
    end
  end

end
