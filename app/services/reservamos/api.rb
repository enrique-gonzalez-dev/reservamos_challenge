# frozen string literal: true

module Reservamos
  class Api
    include HTTParty
    BASE_URL = ENV['RESERVAMOS_BASE_URL']

    def initialize; end

    def coordinates_by_city(city, page, per_page)
      return nil if city.nil?

      # Make request to reservamos api to places endpoint
      response = HTTParty.get("#{BASE_URL}places?q=#{city}")
      json_response = JSON.parse(response.body)
      # Paginate response
      paginated_response = paginate(json_response, page, per_page)
      raise StandardError, 'City not found or invalid page' if paginated_response.nil?

      cities = {}
      # Set data and total_pages like keys to return
      cities[:data] = paginated_response
                      .map { |item| { lat: item['lat'], long: item['long'], name: item['city_name'] } }
      cities[:total_pages] = (json_response.size / per_page.to_f).ceil
      cities
    end

    private

    def paginate(data, page, per_page)
      # Paginate data based on page and per_page parameters
      start_index = (page - 1) * per_page
      end_index = start_index + per_page - 1
      data[start_index..end_index]
    end
  end
end
