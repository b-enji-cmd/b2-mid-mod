require "rails_helper"
RSpec.describe 'As a user'do
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
	describe'when I visit the index page'do
		it'lists all mechanics and their years'do
			visit'/mechanics'
			expect(page).to have_content("All Mechanics")
			within("#mechanic-#{@mech_1.id}")do
				expect(page).to have_content('A')
				expect(page).to have_content('12')
			end
		end

	end
end