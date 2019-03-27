class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def list_roles
    character_name = self.characters.map {|char| char.name}
    show_name = self.shows.map {|show| show.name}
    "#{character_name.first} - #{show_name.first}"
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
