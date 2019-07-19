require 'rails_helper'

describe HouseMember do
  it "is initialized with name and id from the api response" do
    member_data = {:id=>38, :name=>"Balon Greyjoy", :house_id=>5, :created_at=>"2019-05-15T03:54:21.094Z", :updated_at=>"2019-05-15T03:54:21.094Z"}
    member = HouseMember.new(member_data)

    expect(member.id).to eq(38)
    expect(member.name).to eq("Balon Greyjoy")
  end
end
