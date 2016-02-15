class PedidosDiente < ActiveRecord::Base
  belongs_to :pedido
  belongs_to :diente
end
