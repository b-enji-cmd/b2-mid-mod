require "rails_helper"
RSpec.describe 'As a user'do
	describe'when I visit the index page'do
		it'lists all mechanics and their years'do
			visit'/mechanics'
			expect(page).to have_content("All Mechanics")
		end
	end
end