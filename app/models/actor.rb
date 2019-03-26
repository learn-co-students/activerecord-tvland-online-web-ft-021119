class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters# belongs_to :show

    def roles
        self
        #characters.map do |thesbian|
        #"#{thesbian.name} - #{thesbian.show.name}"
        end
end