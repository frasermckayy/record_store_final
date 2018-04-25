require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/album.rb')
require_relative('../models/artist.rb')
require("pry-byebug")


get '/inventory' do
  @artists = Artist.all()
  @albums = Album.all()
  erb(:inventory)
end

# index
get '/artists' do
  @artists = Artist.all()
  erb (:"artists/index")
end

#new
get '/artists/new' do
  erb(:"artists/new")
end

# create
post "/artists" do
  artist = Artist.new(params)
  artist.save()
  redirect to "/artists"
end

# show
get "/artists/:id" do
  @artist = Artist.find(params[:id])
  erb(:"artists/show")
end

post '/artists/delete' do
  @artist = Artist.delete(params['name'])
  @artist.delete()
  redirect to "/artists"
end
