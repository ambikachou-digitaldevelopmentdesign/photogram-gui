Rails.application.routes.draw do

  get("/photos", { :controller => "photos", :action => "photos_list" })
  get("/users", { :controller => "users", :action => "index" })
end
