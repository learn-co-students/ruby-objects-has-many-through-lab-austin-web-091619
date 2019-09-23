require_relative 'song'
require_relative 'artist'

class Genre

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def songs
        Song.all.select { |song| song.genre == self}
    end

    def artists
        songs.map { |song| song.artist}
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end

end