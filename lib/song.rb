require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create
    new_song = Song.new
    new_song.save
    new_song
  end

  def self.new_by_name(value)
    new_song = Song.new
    new_song.name = value
    new_song
  end

  def self.create_by_name(value)
    new_song = Song.create
    new_song.name = value
    new_song
  end

  def self.destroy_all
    @@all.clear
  end

  def alphbetical
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    @@all.sort_by{|song| song.name.downcase.split().map{|x| alphabet.index[x] }}
  end
# binding.pry
end
