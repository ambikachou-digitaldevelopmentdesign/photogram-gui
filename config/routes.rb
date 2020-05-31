Rails.application.routes.draw do
  get("/users/:a_username", { :controller => "users", :action => "details" })
  get("/insert_user_record", { :controller => "users", :action => "add_row"})
  get("/update_username", { :controller => "users", :action => "update_row"})

  get("/photos", { :controller => "photos", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  get("/", { :controller => "users", :action => "index" })
end
