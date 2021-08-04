class PhotoController < ApplicationController
  def all
    render({:template => "all_photo.html.erb"})
  end
  def detail
    photo_id = params.fetch("photo_id")
    @photo = Photo.where({:id => photo_id}).first
    render({:template => "photo_detail.html.erb"})
  end
end
