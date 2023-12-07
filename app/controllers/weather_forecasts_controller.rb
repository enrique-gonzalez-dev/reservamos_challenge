# frozen_string_literal: true

class WeatherForecastsController < ApplicationController
  def index
    # Pagination parameters
    page = (params[:page] || 1).to_i
    per_page = (params[:per_page] || 10).to_i

    raise StandardError, 'City is required' if params[:city].nil?

    cities = reservamos.coordinates_by_city(params[:city], page, per_page)
    weather_forecasts = []

    # Get weather forecast by coordinates for each city
    cities[:data].each do |city|
      weather_forecast = open_weather.weather_by_coordinates(city[:lat], city[:long], params[:units])
      weather_forecasts << {
        city: city[:name],
        weather: weather_forecast
      }
    end

    render status: :ok, json: { total_pages: cities[:total_pages], cities: weather_forecasts }
  rescue StandardError => e
    render status: :internal_server_error, json: { message: e.message }
  end

  private

  def reservamos
    Reservamos::Api.new
  end

  def open_weather
    OpenWeathers::Api.new
  end
end
