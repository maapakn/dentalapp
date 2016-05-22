class AddDienteToPedidos < ActiveRecord::Migration
  def change
    add_reference :pedidos, :diente, index: true, foreign_key: true
  end
end
