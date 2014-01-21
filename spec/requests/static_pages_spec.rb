require 'spec_helper'

describe "Static Pages"   do

	describe "Home Page" do  

		it "Should say Onyx Pool Maintanence" do
			visit '/static_pages/home'
			expect(page).to have_content('Onyx Pool Maintanence')
		end

		it "should have title 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title('Onyx Pool | Home')
		end
	end

	describe "Help Page" do

		it "Should say 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title('Onyx Pool | Help')
		end
	end

	describe "FAQ" do

		it "should have the content 'Frequently Asked Quesitons'" do
			visit '/static_pages/faq'
			expect(page).to have_content('Frequently Asked Questions')
		end

		it "should have title 'FAQ'" do
			visit '/static_pages/faq'
			expect(page).to have_title('Onyx Pool | FAQ')
		end
	end
end
