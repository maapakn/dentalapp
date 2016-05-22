class DropPedidosDientes < ActiveRecord::Migration
  def change
  	drop_table :pedidos_dientes, force: :cascade
  end
end
