class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
return  "#{Actor.first.first_name} #{Actor.first.last_name}"
end

		def list_roles
		self.characters.collect do |each_character|
			#binding.pry
			if Show.first.id == each_character.show_id
				"#{Character.first.name} - #{Show.first.name}"
			end
		end
	end
end