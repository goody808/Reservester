class Reservation < ActiveRecord::Base
  attr_accessible :name, :party_size, :time

  belongs_to :restaurant

end
