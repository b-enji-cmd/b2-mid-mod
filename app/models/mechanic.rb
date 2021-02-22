class Mechanic < ApplicationRecord
	has_many :ride_mechanics
	has_many :rides, through: :ride_mechanics

	def self.average_exp
		average(:experience).to_f
	end

end