Rails.application.routes.draw do
  get("/", {:controller => "user", :action => "all"})
  get("/users", {:controller => "user", :action => "all"})
  get("/users/:username", {:controller => "user", :action => "detail"})
  get("/photos", {:controller => "photo", :action => "all"})
  get("/photos/:photo_id", {:controller => "photo", :action => "detail"})
  get("/delete_photo/:photo_id", {:controller => "photo", :action => "delete"})
  get("/insert_user_record", {:controller => "user", :action => "add"})
  get("/insert_photo_record", {:controller => "photo", :action => "create"})
  get("/insert_comment_record", {:controller => "photo", :action => "add_comment"})
  get("/update_user/:user_id", {:controller => "user", :action => "update"})
end
