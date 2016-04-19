# INDEX
get "/artists" do
  @artists = Artist.all
  erb :"/artists/index"
end

# NEW
get "/artists/new" do
  authorize!
  @artist = Artist.new
  erb :"artists/new"
end

# CREATE
post "/artists" do
  authorize!
  @artist = Artist.new(params[:artist])
  if @artist.save
    redirect "/artists"
  else
    erb :"artists/new"
  end
end

# SHOW
get "/artists/:id" do
  @artist = Artist.find(params[:id])
  if @artist
    erb :"artists/show"
  else
    redirect "/artists"
  end
end

# EDIT
get "/artists/:id/edit" do
  authorize!
  @artist = Artist.find(params[:id])
  erb :"artists/edit"
end

# UPDATE
put '/artists/:id' do
  p "EDIT"
  authorize!
  @artist = Artist.find(params[:id])
  if @artist.update(params[:artist])
    redirect "/artists/#{@artist.id}"
  else
    erb :"artists/show"
  end
end

delete "/artists/:id" do
  authorize!
  @artist = Artist.find(params[:id])
  if @artist.destroy
    redirect "/artists"
  else
    redirect "/artists/#{@artist.id}"
  end
end

delete "/artists/:id/pieces/:piece_id" do
  authorize!
  @piece = Piece.find(params[:piece_id])
  @piece.destroy
  redirect "/artists/#{params[:id]}"
end