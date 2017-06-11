class Chart < ApplicationRecord
  def self.retrieve_temp(temp_data)
    chart_data = [ {name: "Ambient Temperature", data: temp_data.map{|t| [ t['loggedTime'], t['ambientTemperature'] ]}},
    {name: "Outside Temperature", data: temp_data.map{|t| [ t['loggedTime'], t['outsideTemperature'] ]}},
    {name: "Target Temperature", data: temp_data.map{|t| [ t['loggedTime'], t['targetTemperature'] ]}}]

    return chart_data
  end

  def self.retrieve_humid(temp_data)
    chart_data = [ {name: "Ambient Humidity", data: temp_data.map{|t| [ t['loggedTime'], t['ambientHumidity'] ]}},
    {name: "Outside Humidity", data: temp_data.map{|t| [ t['loggedTime'], t['outsideHumidity'] ]}}]

    return chart_data
  end

  def self.retrieve_hvac(temp_data)
    chart_data = [ temp_data.map{|t| [ t['hvacState'], t['loggedTime'], (Time.parse(t['loggedTime']) + 15*60).to_s ]} ][0]

    return chart_data
  end
end
