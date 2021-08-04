Rails.application.routes.draw do
  get("/", {:controller => "user", :action => "all"})
  get("/users", {:controller => "user", :action => "all"})
  get("/users/:user_id", {:controller => "user", :action => "detail"})
  get("/photos", {:controller => "photo", :action => "all"})
  get("/photos/:photo_id", {:controller => "photo", :action => "detail"})

end
