json.array!(@materials) do |material|
  json.extract! material, :id, :unit_id, :evolve_unit_id
  json.url material_url(material, format: :json)
end
