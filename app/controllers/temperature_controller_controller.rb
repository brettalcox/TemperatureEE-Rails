class TemperatureControllerController < ApplicationController
  def retrieve_data
    @temperature_data = HTTParty.get('http://localhost:8080/TemperatureEE-web/temperature/intervals/data.json')
  end
end
