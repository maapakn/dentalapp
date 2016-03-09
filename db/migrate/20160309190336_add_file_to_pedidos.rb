class AddFileToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :file, :string
  end
end
