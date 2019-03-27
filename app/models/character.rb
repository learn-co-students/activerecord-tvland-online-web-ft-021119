class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    phrase = self.catchphrase
    "#{self.name} always says: #{phrase}"
  end

#   def build_show(arg)
#     new_show = Show.new(arg)
#     self.show = new_show
#   end
#
#   def build_network(thing)
# # binding.pry
#   end
end
