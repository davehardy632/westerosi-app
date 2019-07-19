require 'rails_helper'


describe "As a user, visiting root path" do
  context "I can select Greyjoy from a dropdown, Click 'Get Members' and see the results" do
    it "I see a count of 7 members, and the actual members with a name and id" do

      visit "/"
      # ```As a user
      # When I visit "/"
      select "Greyjoy", from: :house
      # And I select "Greyjoy" from the dropdown
      click_on "Get Members"
      # And I click on "Get Members"
      expect(current_path).to eq(search_path)
      # Then my path should be "/search" with "house=greyjoy" in the parameters
      expect(page).to have_content("7 Members")
      # And I should see a message "7 Members"
      expect(page).to have_css(".member", count: 7)
      # And I should see a list of 7 the members of the house for Colorado

      within(first(".member")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".id")
      end
      # And I should see a list of the 7 members of House Greyjoy
      # And I should see a name and id for each member.```
    end
  end
end
# visit '/'
#
#     select "Colorado", from: :state
#     # And I select "Colorado" from the dropdown
#     click_on "Locate Members of the House"
#     # And I click on "Locate Members from the House"
#     expect(current_path).to eq(search_path)
#     # Then my path should be "/search" with "state=CO" in the parameters
#     expect(page).to have_content("7 Results")
#     # And I should see a message "7 Results"
#     expect(page).to have_css(".member", count: 7)
#     # And I should see a list of 7 the members of the house for Colorado
#
#     within(first(".member")) do
#       expect(page).to have_css(".name")
#       expect(page).to have_css(".role")
#       expect(page).to have_css(".party")
#       expect(page).to have_css(".district")
#     end


# Your key is: egg
