class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  #def list_roles
  #  self.characters.collect do |character|
  #    if Show.first.id == Character.first.show.id
  #      "#{Character.first.name} - #{Show.first.name}"
  #    end
  #  end
  #end

  def list_roles
    self.characters.collect do |character|
    "#{character.name} - #{character.show.name}"
    end
  end
end
