class WesterosiApiService
  #
  # def initialize(house_id)
  #   @house_id = house_id
  # end

  def members_by_house_name(house_id)
    fetch_data("/api/v1/house/#{house_id}")
  end

  # def members_by_house_name
  #   response = conn.get
  #   JSON.parse(response.body, symbolize_names: true)
  # end

  # def conn
  #   Faraday.new(url: "http://westerosapi.herokuapp.com/api/v1/house/#{house_name}?api_key=#{ENV["API_KEY"]}") do |faraday|
  #     faraday.adapter Faraday.default_adapter
  #   end
  # end
  private
  attr_reader :house_id

  def conn
    Faraday.new(url: "https://westeros-as-a-service.herokuapp.com") do |faraday|
      faraday.headers['x_api_key'] = ENV["API_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end



  def fetch_data(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

end
