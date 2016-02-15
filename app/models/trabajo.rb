class Trabajo < ActiveRecord::Base
	has_many :materials
	has_many :pedidos
end
