require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/album.rb')
require_relative('../models/artist.rb')


get '/inventory' do
  @albums = Album.all()
  #@artist = Artist.all()
  erb(:inventory)
end


get '/albums' do
  @albums = Album.all()
  erb(:"albums/index")
end

get '/albums/new' do
  @artists = Artist.all()
  @albums = Album.all()
  erb(:"albums/new")
end

post '/albums' do
  album = Album.new(params)
  album.save()
  redirect to '/albums'
end

post '/albums/new' do
  album = Album.new(params)
  album.save()
  redirect to "/albums/new"
end

get '/albums/:id' do
  @album = Album.find(params['id'].to_i)
  erb(:"albums/show")
end

get'/albums/:name' do
  @album = Album.find(params['name'])
  erb(:"albums/index")
end

get '/albums/:quantity' do
  @album = Album.find(params['quantity'].to_i)
  erb(:"albums/index")
end

post '/albums/:id/delete' do
  @album = Album.find(params['id'])
  @album.delete()
  redirect to "/albums/new"
end

post '/' do
  @artists = Artist.new()
end
