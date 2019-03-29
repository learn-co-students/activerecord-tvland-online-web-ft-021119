class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  # def build_network(arg)
  #   binding.pry
  #   self.network = Network.create(arg)
  # end
end
