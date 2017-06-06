Rails.application.routes.draw do
  get '/temperature/data', to: 'temperature_controller#retrieve_data'
  
  root to: 'temperature_controller#retrieve_data'
end
