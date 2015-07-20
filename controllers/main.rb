#---------------------------------------------------------------------
# Main
#---------------------------------------------------------------------

get "/home" do
  erb :"home"
end

get "/album_menu" do
  erb :"albums/album_menu"
end

get "/photographer_menu" do
  erb :"photographers/photographer_menu"
end

get "/photo_menu" do
  erb :"photo/photo_menu"
end