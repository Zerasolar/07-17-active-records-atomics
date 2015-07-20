get "/add_photo" do
  erb :"photos/add_photo_form"
end

get "/all_photos" do
  @photo = Photo.all
  erb :"photos/list_photos"
end

get "/save_photo" do
  
    @new_photo = Photo.new({"title" => params["title"], "location" => params["location"], "photographer_id" => params["photographer_id"]})
    @new_photo.save
    erb :"photos/photo_added"
end

get "/change_photo" do
  erb :"photos/change_photo"
end

get "/change_photo_form/:x" do
  @photo_instance = Photo.find(params["x"])
  erb :"photos/photo"
end

get "/edited_photo/:x" do
  @photo_instance = Photo.find(params["x"])
    @photo_instance.save
    erb :"photos/photo_changed"
end

get "/delete_photo" do
  erb :"photos/delete_photo"
end

get "/deleted_photo" do
  params["photo"].each do |photo|
    Photo.delete(photo)
  end
  erb :"photos/photo_deleted"
  
end