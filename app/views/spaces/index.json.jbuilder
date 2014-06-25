json.array!(@spaces) do |space|
  json.extract! space, :id, :space_number, :lot_id
  json.url space_url(space, format: :json)
end
