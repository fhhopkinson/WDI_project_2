 require_relative "../models/artist.rb"
 require_relative "../models/piece.rb"

 Artist.destroy_all
 Piece.destroy_all

  [
   {
    username: "ppicasso" 
    first_name: "Pablo" 
    last_name: "Picasso"
    email: "pablo@pablo.com"
    bio: "The pioneer of cubism to post-impressionism so I thought I would use this site to show off"
    image: ""
    password_digest: "squirrel"
    profile_pic: "https://upload.wikimedia.org/wikipedia/commons/a/a9/Pablo_picasso_1_(cuadrado).jpg"
  },
  {
    username: "pmondrian"     
    first_name: "Piet"
    last_name: "Modrian"
    email: "piet@piet.com"
    bio: "I can't remember what I was supposed to be making but people think that it is good so I continue doing it"
    image:""
    password_digest: "squirrel"
    profile_pic: "http://www.theartstory.org/images20/photo/mondrian_2.jpg"
    },
    {
    username: "hmatisse"
    first_name: "Henri"
    last_name: "Matisse"
    email: henri@henri.com
    bio: "I am competing with pablo for who is the best cubist and at the moment he is winning. That is why I am using this site."
    image: ""
    password_digest: "squirrel"
    profile_pic:
  },
  {
   username: "vtatlin"
   first_name: "Vladimir"
   last_name: "Tatlin"
   email: "vlad@vlad.com"
   bio: "I was one of Stalin's favourite artists which is why I made this cool sculpture that was going to be an exhibit at the Paris exhibition"
   image: ""
   password_digest: "squirrel"
   profile_pic:
  }
 ].each do |artist|
 Artist.create!(artist)
end

[  
  {
   title:
   image: ""
   artist_id:1
  },
  {
   title:
   image:
   artist_id:1
  },
  {
   title:
   image:
   artist_id:1
  },
  {
   title:
   image:
   artist_id:2
  },
  {
   title:
   image:
   artist_id:2
  },
  {
   title:
   image:
   artist_id:2
  },
  {
   title:
   image:
   artist_id:3
  },
  {
   title: "Art of the Russias"
   image:
   artist_id:3
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