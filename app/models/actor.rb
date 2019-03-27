class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    arr = []
    char_names = self.characters.collect {|element| element.name}
    show_names = self.shows.collect {|element2| element2.name}
    #binding.pry
    char_show = char_names + show_names
    arr << char_show.join(" - ")
    arr
  end
end
