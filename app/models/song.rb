class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist_name = self.artist.name
  end

  def artist_name=(name)
  	self.artist = Artist.find_or_create_by(name: name) unless name.empty?
  end
end
