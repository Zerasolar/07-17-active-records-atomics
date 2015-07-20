get "/add_photographer" do
  erb :"photographers/add_photographer_form"
end

get "/list_photographer" do
  @photographer = Photographer.all
  erb :"photographers/list_photographer"
end

get "/save_photographer" do
  
    @new_photographer = Photographer.new({"name" => params["name"]})
    @new_photographer.save
    erb :"photographers/photographer_added"
end

get "/change_photographer" do
  erb :"photographers/change_photographer"
end

get "/change_photographer_form/:x" do
  @photographer_instance = Photographer.find(params["x"])
  erb :"photographers/photographer"
end

get "/edited_photographer/:x" do
  @photographer_instance = Photographer.find(params["x"])
    @photographer_instance.save
    erb :"photographers/photographer_changed"
end

get "/delete_photographer" do
  erb :"photographers/delete_photographer"
end

get "/deleted_photographer" do
  params["photographer"].each do |photographer|
    Photographer.delete_row(photographer)
  end
  erb :"photographers/photographer_deleted"
  
end

    