 require_relative "../models/artist.rb"
 require_relative "../models/piece.rb"

 Artist.destroy_all
 Piece.destroy_all

  [
   {
    username:
    first_name:
    last_name:
    email:
    bio:
    image:
    password_digest:
    profile_pic:
  },
  {
    username:
    first_name:
    last_name:
    email:
    bio:
    image:
    password_digest:
    profile_pic:
    },
    {
    username:
    first_name:
    last_name:
    email:
    bio:
    image:
    password_digest:
    profile_pic:
  },
  {
   username:
   first_name:
   last_name:
   email:
   bio:
   image:
   password_digest:
   profile_pic:
  }
 ].each do |artist|
 Artist.create!(artist)
end

[  
  {
   title:
   image:
   artist_id:
  },
  {
   title:
   image:
   artist_id:
  },
  {
   title:
   image:
   artist_id:
  }
  ,
  {
   title:
   image:
   artist_id:
  },
  {
   title:
   image:
   artist_id:
  },
  {
   title:
   image:
   artist_id:
  },
  {
   title:
   image:
   artist_id:
  },
  {
   title:
   image:
   artist_id:
  }

 ].each do |piece|
 Piece.create!(piece) 
end



# [
#   {
#     title: "Tha Doggfather", 
#     poster: "https://s3.amazonaws.com/rapgenius/1366744664_tha-doggfather-5048f1c320e29.jpg", 
#     artist_id: 2, 
#     price: 10.99
#   },
#   {
#     title: "Da Game Is to Be Sold, Not to Be Told", 
#     poster: "https://upload.wikimedia.org/wikipedia/pt/0/0c/Snoop_Dogg_-_Da_Game_Is_to_Be_Sold,_Not_to_Be_Told.jpg", 
#     artist_id: 2, 
#     price: 11.99
#   },
#   {
#     title: "No Limit Top Dogg", 
#     poster: "http://cps-static.rovicorp.com/3/JPG_400/MI0001/387/MI0001387813.jpg?partner=allrovi.com", 
#     artist_id: 2, 
#     price: 12.99
#   },
#   {
#     title: "Please Please Me", 
#     poster: "https://upload.wikimedia.org/wikipedia/en/a/a4/PleasePleaseMe.jpg", 
#     artist_id: 1, 
#     price: 9.99
#   },
#   {
#     title: "A Hard Day's Night", 
#     poster: "https://upload.wikimedia.org/wikipedia/en/e/e6/HardDayUK.jpg", 
#     artist_id: 1, 
#     price: 10.99
#   }
# ].each do |album|
#   Album.create!(album)
# end

# [
#   { name: "HipHop" },
#   { name: "Rock" }
# ].each do |genre|
#   Genre.create!(genre)
# end