class Artist

    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        new_song = Song.new(name, genre)
        new_song.artist = self
        new_song
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs.collect {|song| song.genre}
    end

end
