require_relative 'artist'
require_relative 'genre'

class Song

    attr_reader :name, :artist, :genre

    @@all = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@all << self
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end

end
