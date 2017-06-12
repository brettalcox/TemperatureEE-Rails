class ChartController < ApplicationController
  def get_temp
    temperature_data = HTTParty.get('http://localhost:8080/TemperatureEE-web/data/temperature/intervals/day/data.json')
    render json: Chart.retrieve_temp(temperature_data)
  end

  def get_humid
    temperature_data = HTTParty.get('http://localhost:8080/TemperatureEE-web/data/humidity/intervals/day/data.json')
    render json: Chart.retrieve_humid(temperature_data)
  end

  def get_hvac
    temperature_data = HTTParty.get('http://localhost:8080/TemperatureEE-web/data/hvac/intervals/day/data.json')
    render json: Chart.retrieve_hvac(temperature_data)
  end
end
