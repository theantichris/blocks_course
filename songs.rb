class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

class Playlist
  include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def play_songs
    @songs.each { |song| song.play }
  end

  def each
    @songs.each { |song| yield(song) }
  end

  def each_tagline
    @songs.each { |song| yield("#{song.name} - #{song.artist}") }
  end

  def each_by_artist(artist)
    @songs.select { |song| song.artist == artist }.each { |song| yield(song)}
  end
end

song1 = Song.new("Bleed The Freak", "Alice In Chains", 4)
song2 = Song.new("You Never Even Called Me By My Name", "David Allan Coe", 5)
song3 = Song.new("Elvis Is Everywhere", "Mojo Nixon", 5)

playlist = Playlist.new("My Playlist")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)

playlist.each{ |song| song.play }

elvis_songs = playlist.select { |song| song.name =~ /Elvis/ }
p elvis_songs

playlist.each_tagline { |tagline| puts tagline }

playlist.each_by_artist("Alice In Chains") { |song| song.play }
