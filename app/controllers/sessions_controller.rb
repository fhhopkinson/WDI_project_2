# get the login form
get '/login' do
  @artist = Artist.new
  erb :'sessions/new'
end

# handle the form
post '/login' do
# find artist by email address
artist = Artist.find_by_username(params[:artist][:username])
# if there is a artist, check password
  if artist && artist.authenticate(params[:artist][:password])
    # log the artist in
    session[:artist_id] = artist.id
    flash[:success] = "Welcome!"
    redirect "/artists/#{artist.id}"
  else
    # otherwise render login again
    flash[:danger] = "Username or password incorrect"
    redirect "/login"
  end
end

# destroy the session
get '/logout' do
  session.clear
  redirect "/artists"
end

