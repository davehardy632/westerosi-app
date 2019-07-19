class WesterosiFacade

  def initialize(house_id)
    @house_id = house_id
  end

  def member_count
    members.count
  end

  # def members
  #   member_data = westerosi_api_service.members_by_house_name[:data][0][:attributes][:members]
  #   member_data.map do |member|
  #     HouseMember.new(member)
  #   end
  # end

  def members
    member_data = westerosi_api_service.members_by_house_name(house_id)
    member_data.map do |member|
      HouseMember.new(member)
    end
  end

  private

  attr_reader :house_id

  def westerosi_api_service
    WesterosiApiService.new
  end
end
