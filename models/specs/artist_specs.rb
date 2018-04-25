require( 'minitest/autorun')
require('minitest/rg')

require_relative('../artist.rb')
require_relative('../album.rb')

class TestArtist < MiniTest::Test


  def setup()
    hash = {"id" => 2, "name" => "Logic"}
    @artist = Artist.new(hash)
  end

  def test_artist_name()
    assert_equal("Logic", @artist.name)
  end


end
