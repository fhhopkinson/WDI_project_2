# INDEX
get "/pieces" do
  # authorize!
  @pieces = Piece.all
  erb :"pieces/index"
end

# New
get "/pieces/new" do
  authorize!
  @piece = Piece.new
  erb :"pieces/new"
end

# SHOW
get "/pieces/:id" do
  # authorize!
  @piece = Piece.find(params[:id])
  erb :"pieces/show"
end

#Create
post "/pieces" do
  authorize!
  @piece = current_artist.pieces.new(params[:piece])
  if @piece.save
    redirect "/artists/#{current_artist.id}"
  else
    erb :"pieces/new"
  end
end

#edit
get "/pieces/:id/edit" do
  authorize!
  @piece = Piece.find(params[:id])
  erb :"pieces/edit"
end

#update
get "/pieces/:id" do
  authorize!
  @piece = Piece.update(params[:id])
  if @piece.update(params[:piece])
    redirect "/pieces/#{@piece.id}"
  else
    redirect "/pieces/#{@piece.id}/edit"
  end
end

#delete
delete "/pieces/:id" do
  authorize!
  @piece = Piece.find(params[:id])
  if @piece.destroy
    redirect "/pieces"
  else
    redirect "/pieces/#{@piece.id}"
  end
end

#get pieces assigned to each artists and then post to the show page by iterating over them. get the first image of each artist to populate the index page and on click send them to the artists profile.

