class AddArchivoToPedidos < ActiveRecord::Migration
  def change
  	add_attachment :pedidos, :archivo
  end
end
