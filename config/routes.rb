Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/about", { :controller => "misc", :action => "about" })
  get("/movies", { :controller => "movies", :action => "index" })
  #saving the route for the ABC 
  get("/movies/:path_id", { :controller => "movies", :action => "show" })  
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
end
