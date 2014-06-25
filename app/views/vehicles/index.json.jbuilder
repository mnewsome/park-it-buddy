json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :manufacturer, :model, :year, :license_plate
  json.url vehicle_url(vehicle, format: :json)
end
