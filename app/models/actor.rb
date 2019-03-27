require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters# belongs_to :show

    def full_name
      "#{self.first_name} #{self.last_name}"
        #characters.map do |thesbian|
        #"#{thesbian.name} - #{thesbian.show.name}"
    end


    def list_roles
     characters.map do |role|
      "#{role.name} - #{role.show.name}"
    end
    end
end