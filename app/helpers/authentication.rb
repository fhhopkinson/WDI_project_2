helpers do 

  def current_artist
    @current_artist ||= Artist.find(session[:artist_id]) if session[:artist_id]
  end

  def is_logged_in?
    !!current_artist
  end

  def authorize!
    unless is_logged_in?
      flash[:danger] ="You must log in to view this page!"
      redirect '/login'
    end
  end

end