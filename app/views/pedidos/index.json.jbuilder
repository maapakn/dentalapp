json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :nombre, :observacion, :trabajo_id, :material_id, :user_id
  json.url pedido_url(pedido, format: :json)
end
