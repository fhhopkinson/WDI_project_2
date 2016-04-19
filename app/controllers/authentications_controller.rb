# get the form
get '/register' do
  @artist = Artist.new
  erb :'authentications/new'
end

# handle the form
post '/register' do
  @artist = Artist.new(params[:artist]) 
  if @artist.save
    session[:artist_id] = @artist.id 
    flash[:success] = "Thanks for registering"
    redirect '/artists'
  else
    erb :'authentications/new'
  end
end