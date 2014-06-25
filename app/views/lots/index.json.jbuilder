json.array!(@lots) do |lot|
  json.extract! lot, :id, :name, :number_of_spaces
  json.url lot_url(lot, format: :json)
end
