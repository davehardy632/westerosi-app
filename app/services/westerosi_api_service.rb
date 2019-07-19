class WesterosiApiService

  def initialize(house_name)
    @house_name = house_name
  end

  def members_by_house_name
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: "http://westerosapi.herokuapp.com/api/v1/house/#{house_name}?api_key=#{ENV["API_KEY"]}") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  private
  attr_reader :house_name



end
