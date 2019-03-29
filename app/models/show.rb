require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(network) #{:call_letters=>"Fox"}
    self.network = Network.create(network)
  end
end
