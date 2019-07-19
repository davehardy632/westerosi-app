require 'rails_helper'


describe "As a user, visiting root path" do
  context "I can select Greyjoy from a dropdown, Click 'Get Members' and see the results" do
    # it "I see a count of 7 members, and the actual members with a name and id" do
    #
    #   visit "/"
    #
    #   select "Greyjoy", from: :house
    #
    #   VCR.use_cassette("features/user_can_select_house_members") do
    #   click_on "Get Members"
    #
    #   expect(current_path).to eq(search_path)
    #
    #   expect(page).to have_content("7 Members")
    #
    #   expect(page).to have_css(".member", count: 7)
    #
    #   within(first(".member")) do
    #     expect(page).to have_css(".name")
    #     expect(page).to have_css(".id")
    #   end
    #   end
    # end
    it "I see a count of 7 members, and the actual members with a name and id" do

      visit "/"

      select "Greyjoy", from: :house

      VCR.use_cassette("features/user_can_select_house_members") do
      click_on "Get Members"

      expect(current_path).to eq(search_path)

      expect(page).to have_content("7 Members")

      expect(page).to have_css(".member", count: 7)

      within(first(".member")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".id")
      end
      end
    end
  end
end
