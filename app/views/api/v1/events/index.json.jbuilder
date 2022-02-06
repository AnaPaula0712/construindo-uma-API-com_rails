json.array! @events do |event|
  json.extract! event, :id, :name, :region
end
