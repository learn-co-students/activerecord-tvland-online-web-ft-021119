class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    char_name = self.characters.map {|char| char.name}
    show_name = self.shows.map {|show| show.name}
    "#{char_name.first} - #{show_name.first}"
  end
end