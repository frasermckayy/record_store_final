require( 'minitest/autorun')
require('minitest/rg')

require_relative('../artist.rb')
require_relative('../album.rb')


class TestAlbum < MiniTest::Test


  def setup()
    hash = {"id" => 1, "name" => "Flexicution", "quantity" => "8", "artist_id" => "2"}
    @album = Album.new(hash)
  end

def test_album_name()
  assert_equal("Flexicution", @album.name)
end

def test_album_quantity()
  assert_equal("8", @album.quantity)
end



end
