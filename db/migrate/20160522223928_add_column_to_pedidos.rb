class AddColumnToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :state, :string
  end
end
