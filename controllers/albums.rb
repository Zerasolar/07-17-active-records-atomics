get "/add_album" do
  erb :"albums/add_album_form"
end

get "/list_album" do
  @album = Album.all
  erb :"albums/list_album"
end

get "/save_album" do
  
    @new_album = Album.new({"title" => params["title"]})
    @new_album.save
    erb :"albums/album_added"
end

get "/change_album" do
  erb :"albums/change_album"
end

get "/change_album_form/:x" do
  @album_instance = Album.find(params["x"])
  erb :"albums/album"
end

get "/edited_album/:x" do
  @album_instance = Album.find(params["x"])
    @album_instance.save
    erb :"albums/album_changed"
end

get "/delete_album" do
  erb :"albums/delete_album"
end

get "/deleted_album" do
  params["album"].each do |album|
    Album.delete_row(album)
  end
  erb :"albums/album_deleted"
  
end
    