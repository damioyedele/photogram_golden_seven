class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
    render("photos/index.html.erb")
  end

  def show
    #We need to find a particular row in the photo table, and we know how to get that ID from params hash. We do that using photo with method 'find'
    @photo = Photo.find(params[:id])

    #Now we need to render, to take it to it's respective template under 'views' folder
    render("photos/show.html.erb")

  end

  def new_form

    render("photos/new_form.html.erb")

  end

  def create_row
    p = Photo.new
    #We need to fill the above with what has come in the query string which is now the params hash
    p.caption = params[:caption]
    p.source = params[:source]
    p.save #this step is critical

    #now we need to redirect to new page. We don't want to rewrite any page, just want to go redirect to our regular page with the new photo we just added, so

    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find(params[:id])
    render("photos/edit_form.html.erb")
  end

  def update_row
    p = Photo.find(params[:id]) #This calls up the old photo, then we create a new row. From this point on we do the same thing we've done before
    p.caption = params[:caption]
    p.source = params[:source]
    p.save #this step is critical

    redirect_to("/photos")
  end

  def delete_row
    p = Photo.find(params[:id]) #This calls up the old photo
    p.destroy

    redirect_to("/photos")
  end


end
