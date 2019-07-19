class WesterosiFacade

  def initialize(house_name)
    @house_name = house_name
  end

  def member_count
    members.count
  end

  def members
    member_data = westerosi_api_service.members_by_house_name[:data][0][:attributes][:members]
    member_data.map do |member|
      HouseMember.new(member)
    end
  end

  private
  attr_reader :house_name

  def westerosi_api_service
    WesterosiApiService.new(house_name)
  end
end
