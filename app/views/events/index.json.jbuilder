json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :price, :starts_at, :description
  json.url event_url(event, format: :json)
end
