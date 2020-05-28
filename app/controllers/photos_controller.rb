class PhotosController < ApplicationController

  def photos_list
    @all_photos = Photo.all.order( :created_at => :desc)
    render({ :template => "photo_templates/list_of_photos.html.erb" })
  end

end