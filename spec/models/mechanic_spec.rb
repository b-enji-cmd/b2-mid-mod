require "rails_helper"

RSpec.describe Mechanic do
	before :each do
		@mech_1 = Mechanic.create(name: 'A', experience: 12)
		@mech_2 = Mechanic.create(name: 'B', experience: 13)
		@mech_3 = Mechanic.create(name: 'C', experience: 14)
		@mech_4 = Mechanic.create(name: 'D', experience: 15)

		@ride_1 = Ride.create(name: 'Mind Eraser', thrills: 211)
		@ride_2 = Ride.create(name: 'Space Mountain', thrills: 413)
		@ride_3 = Ride.create(name: 'Scrambler', thrills: 115)
		@ride_4 = Ride.create(name: 'Twister', thrills: 610)

		@mech_1.rides << @ride_1
		@mech_2.rides << @ride_2
		@mech_3.rides << @ride_3
		@mech_3.rides << @ride_4
	end
	
	describe "relationships" do
		it {should have_many :ride_mechanics}
		it {should have_many(:rides).through(:ride_mechanics)}
	end

	describe "class methods" do
		it'::average_exp'do
		expect(Mechanic.average_exp).to eq(13.5)
		end
	end
end