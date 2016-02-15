json.array!(@dientes) do |diente|
  json.extract! diente, :id, :numero
  json.url diente_url(diente, format: :json)
end
