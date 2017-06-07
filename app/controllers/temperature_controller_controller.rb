class TemperatureControllerController < ApplicationController
  def retrieve_data
    @temperature_data = HTTParty.get('http://localhost:8080/TemperatureEE-web/temperature/intervals/day/data.json')
  end
end
