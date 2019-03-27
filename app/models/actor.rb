class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    chars = self.characters.map {|c| c.name}
    shows = self.shows.map{|s| s.name}
    chars_and_shows = []
    chars.each_with_index do |c, i|
      chars_and_shows << c + " - " + shows[i]
    end
    chars_and_shows
  end

  
end
