class AddCoverToPedidos < ActiveRecord::Migration
  def change
  	add_attachment :pedidos, :cover
  end
end
