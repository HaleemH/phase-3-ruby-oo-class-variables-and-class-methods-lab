class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def name
    @name
  end
  def artist
    @artist
  end
  def genre
    @genre
  end

  def self.count
    @@count
  end
  def self.artists
    new_list = []
    @@artists.each { |artist| new_list << artist if !new_list.include? artist }
    new_list
  end
  def self.genres
    new_list = []
    @@genres.each { |genre| new_list << genre if !new_list.include? genre }
    new_list
  end

  def self.genre_count
    new_hash = {}
    @@genres.each do |genre|
      if !new_hash.include? genre
        new_hash["#{genre}"] = 1
      else
        new_hash.include? genre
        new_hash["#{genre}"] += 1
      end
    end
    new_hash
  end

  def self.artist_count
    new_hash = {}
    @@artists.each do |artist|
      if !new_hash.include? artist
        new_hash["#{artist}"] = 1
      else
        new_hash.include? artist
        new_hash["#{artist}"] += 1
      end
    end
    new_hash
  end
end
