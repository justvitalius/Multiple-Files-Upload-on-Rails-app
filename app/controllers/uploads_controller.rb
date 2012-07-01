
class UploadsController < ApplicationController
  def create
    @upload = Upload.new
    @upload.img = params[:img].first


    if @upload.save
      render :json => [{
                            :delete_type => "DELETE",
                            :delete_url => "#" ,
                            :name => @upload.img.instance.attributes["img_file_name"],
                            :size=> @upload.img.instance.attributes["img_file_size"],
                            :type=> @upload.img.instance.attributes["img_content_type"],
                            :thumbnail_url => @upload.img.url(:thumb).to_s,
                            :url => @upload.img.url.to_s
                       }]
    else
      render [:json => { :result => 'error'}]
    end
  end
end
