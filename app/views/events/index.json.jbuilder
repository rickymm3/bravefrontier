json.array!(@events) do |event|
  json.extract! event, :id, :name, :end_date, :description, :image_loc
  json.url event_url(event, format: :json)
end
