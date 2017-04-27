Rails.application.routes.draw do
  #Create
  get("/photos", {:controller => "photos", :action =>"index"})
  get("/create_photo", {:controller => "photos", :action => "create_row"})

  #Read
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  get("/photos/:id", {:controller => "photos", :action =>"show"})

  #Update
  get("/photos/:id/edit", {:controller => "photos", :action => "edit_form"})
  get("/update_photo/:id", {:controller => "photos", :action => "update_row"})

end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
