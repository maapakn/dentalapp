class CreatePedidosDientes < ActiveRecord::Migration
  def change
    create_table :pedidos_dientes do |t|
      t.references :pedido, index: true, foreign_key: true
      t.references :diente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
