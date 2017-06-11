Rails.application.routes.draw do
  get '/temperature/data', to: 'temperature#retrieve_data'
  get '/chart/get_temp', to: 'chart#get_temp' 
  get '/chart/get_humid', to: 'chart#get_humid'
  get '/chart/get_hvac', to: 'chart#get_hvac'
  root to: 'temperature#retrieve_data'
end
