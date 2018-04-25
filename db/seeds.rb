require_relative( "../models/artist.rb" )
require_relative( "../models/album.rb" )
require("pry-byebug")

Artist.delete_all()
Album.delete_all()

artist1 = Artist.new({
  "name" => "Logic"
  })

  artist1.save()

  artist2 = Artist.new({
    "name" => "G-Eazy"
    })

    artist2.save()

    artist3 = Artist.new({
      "name" => "Eminem"
      })

      artist3.save()


      album1 = Album.new({
        "name" => "Flexicution",
        "quantity" => "8",
        "artist_id" => artist1.id
        })

        album1.save()

        album2 = Album.new({
          "name" => "When it's dark out",
          "quantity" => "2",
          "artist_id" => artist2.id
          })

          album2.save()

          album3 = Album.new({
            "name" => "Curtain Call",
            "quantity" => "5",
            "artist_id" => artist3.id
            })

            album3.save()

            binding.pry
            nil
