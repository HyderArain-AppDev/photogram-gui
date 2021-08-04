class PhotoController < ApplicationController
  def all
    render({:template => "all_photo.html.erb"})
  end
  def detail
    photo_id = params.fetch("photo_id")
    @photo = Photo.where({:id => photo_id}).first
    render({:template => "photo_detail.html.erb"})
  end
  def delete
    photo_id = params.fetch("photo_id").chomp
    photo = Photo.where({:id => photo_id}).first
    photo.destroy
    redirect_to("/photos")
  end
  def create
    input_image = params.fetch("input_image")
    input_caption = params.fetch("input_caption")
    input_owner_id = params.fetch("input_owner_id")

    a_new_photo = Photo.new
    a_new_photo.image = input_image
    a_new_photo.caption = input_caption
    a_new_photo.owner_id = input_owner_id
    a_new_photo.save

    redirect_to("/photos/" + a_new_photo.id.to_s)
  end
  def add_comment
    input_image_id = params.fetch("input_photo_id")
    input_author_id = params.fetch("input_author_id")
    input_body = params.fetch("input_body")

    a_new_comment = Comment.new
    a_new_comment.photo_id = input_image_id
    a_new_comment.author_id = input_author_id
    a_new_comment.body = input_body
    a_new_comment.save

    redirect_to("/photos/" + input_image_id.to_s)
  end
  def update
    input_image = params.fetch("input_image")
    input_caption = params.fetch("input_caption")
    photo_id = params.fetch("photo_id")

    the_photo = Photo.where({:id => photo_id}).first
    the_photo.caption = input_caption
    the_photo.image = input_image
    the_photo.save

    redirect_to("/photos/" + photo_id.to_s)
  end

end
