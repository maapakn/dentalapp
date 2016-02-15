json.array!(@trabajos) do |trabajo|
  json.extract! trabajo, :id, :nombre
  json.url trabajo_url(trabajo, format: :json)
end
