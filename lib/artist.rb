require_relative 'song'
require_relative 'genre'

class Artist

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def songs
        Song.all.select { |song| song.artist == self}
    end

    def new_song (name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.map { |song| song.genre}
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end

end