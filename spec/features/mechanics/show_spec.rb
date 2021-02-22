require "rails_helper"
RSpec.describe 'As a user'do
before :each do
	Mechanic.destroy_all
	Ride.destroy_all
	@mech_1 = Mechanic.create(name: 'A', experience: 12)
	@mech_2 = Mechanic.create(name: 'B', experience: 13)
	@mech_3 = Mechanic.create(name: 'C', experience: 14)
	@mech_4 = Mechanic.create(name: 'D', experience: 15)

	@ride_1 = Ride.create(name: 'Mind Eraser', thrills: 211, is_open: true)
	@ride_2 = Ride.create(name: 'Space Mountain', thrills: 413, is_open: true)
	@ride_3 = Ride.create(name: 'Scrambler', thrills: 115, is_open: true)
	@ride_4 = Ride.create(name: 'Twister', thrills: 610, is_open: true)

	@mech_1.rides << @ride_1
	@mech_2.rides << @ride_2
	@mech_3.rides << @ride_3
	@mech_3.rides << @ride_4
end
	describe'when I visit the show page'do
		it'lists their name, experience, and all the rides theyre working on'do
			visit "mechanics/#{@mech_1.id}"
			expect(page).to have_content("Mechanic: #{@mech_1.name}")
			expect(page).to have_content("Years of Experience: #{@mech_1.experience}")

			within("#open-rides")do
				expect(page).to have_content("#{@ride_1.name}")
			end
		end

		it'lists the rides in descending order'do
			visit "mechanics/#{@mech_3.id}"
			expect(page).to have_content("Mechanic: #{@mech_3.name}")
			expect(page).to have_content("Years of Experience: #{@mech_3.experience}")

			within("#open-rides")do
				expect(@ride_4.name).to appear_before(@ride_3.name)
			end
		end

	end
end