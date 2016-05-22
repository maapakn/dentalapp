class Trabajo < ActiveRecord::Base
	has_many :pedidos
  	has_many :trabajos_materials
  	has_many :materials, through: :trabajos_materials
end