class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end
  def show
    @the_photo = Photo.find(params[:id])
  end

  def new_form
  end
  def create_row
    the_photo = Photo.new
    the_photo.caption = params[:the_caption]
    the_photo.source = params[:the_source]
    the_photo.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    the_photo = Photo.find(params[:id])
    the_photo.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @the_photo = Photo.find(params[:id])
  end

  def update_row
    the_photo = Photo.find(params[:id])
    the_photo.caption = params[:the_caption]
    the_photo.source = params[:the_source]
    the_photo.save
    redirect_to("http://localhost:3000/photos/" + params[:id])
  end
end
