json.array!(@materials) do |material|
  json.extract! material, :id, :nombre, :trabajo_id
  json.url material_url(material, format: :json)
end
