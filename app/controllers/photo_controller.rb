class PhotoController < ApplicationController
  def all
    render({:template => "all_photo.html.erb"})
  end
  def detail
    render({:template => "photo_detail.html.erb"})
  end
end
