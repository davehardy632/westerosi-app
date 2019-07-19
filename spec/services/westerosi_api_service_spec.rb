require 'rails_helper'

describe WesterosiApiService do

  describe "members" do
    it "finds all Greyjoy members" do
      VCR.use_cassette("services/find_greyjoy_members") do
        service_instance = WesterosiApiService.new("greyjoy")
        house_members = service_instance.members_by_house_name[:data][0][:attributes][:members]
        member = house_members.first

        expect(house_members.count).to eq(7)
        expect(member[:name]).to eq("Balon Greyjoy")
        expect(member[:id]).to eq(38)
      end
    end
  end
end
