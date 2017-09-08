
#artists
artist1 = Artist.create!(name: "Radiohead", age: 32, bio: "Radiohead are an English rock band from Abingdon, Oxfordshire, formed in 1985.")
artist2 = Artist.create!(name: "Mogwai", age: 22, bio: "Mogwai are a Scottish post-rock band, formed in 1995 in Glasgow. ")
artist3 = Artist.create!(name: "Explosions in the Sky", age: 17, bio: "Explosions in the Sky are an American post-rock band from Texas.")


#songs
song1 = Song.create!(track: "Creep", lyrics: "Creep", album: "Pablo Honey", artist: artist1)
song2 = Song.create!(track: "Paranoid Android", lyrics: "Paranoid Android", album: "OK coumputerCreepCreep", artist: artist1)
song3 = Song.create!(track: "May Nothing But Happiness Come Through Your Door", lyrics: "May Nothing But Happiness Come Through Your Door", album: "Come on Die Young", artist: artist1)
song4 = Song.create!(track: "Cody", lyrics: "Cody", album: "Come on Die Young", artist: artist2)
song5 = Song.create!(track: "The Sun Smells Too Loud", lyrics: "The Sun Smells Too Loud", album: "The Hawk Is Howling",artist: artist2)
song6 = Song.create!(track: "I'm Jim Morrison, I'm Dead", lyrics: "I'm Jim Morrison, I'm Dead", album: "The Hawk Is Howling", artist: artist2)
song7 = Song.create!(track: "A Song For Our Fathers", lyrics: "A Song For Our Fathers", album: "How Strange, Innocence", artist: artist3)
song8 = Song.create!(track: "Snow And Lights", lyrics: "Snow And Lights", album: "How Strange, Innocence", artist: artist3)
song9 = Song.create!(track: "The Only Moment We Were Alone", lyrics: "The Only Moment We Were Alone", album: "The Earth Is Not a Cold Dead Place", artist: artist3)
