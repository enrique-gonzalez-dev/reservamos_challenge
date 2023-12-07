# frozen string literal: true

module OpenWeathers
  class Api
    include HTTParty
    BASE_URL = ENV['OPEN_WEATHER_BASE_URL']

    def initialize; end

    def weather_by_coordinates(lat, lon, units)
      return nil if lat.nil? || lon.nil?

      params = {
        lat: lat,
        lon: lon,
        exclude: 'minutely,hourly',
        appid: ENV['OPEN_WEATHER_API_KEY'],
        units: units
      }
      # Encode params to url format and make request
      encode_params = URI.encode_www_form(params)
      response = HTTParty.get("#{BASE_URL}onecall?#{encode_params}")
      # Format response
      format_response(JSON.parse(response.body))
    end

    private

    def format_response(response)
      # Format response to get only the data we need
      {
        current: {
          min_temp: response['daily'][0]['temp']['min'],
          max_temp: response['daily'][0]['temp']['max'],
          weather: response['current']['weather'][0]['main'],
          date: Time.zone.at(response['current']['dt']).strftime('%d/%m/%Y')
        },
        daily: response['daily'].map do |item|
          {
            date: Time.zone.at(item['dt']).strftime('%d/%m/%Y'),
            min_temp: item['temp']['min'],
            max_temp: item['temp']['max'],
            weather: item['weather'][0]['main']
          }
        end
      }
    end
  end
end
