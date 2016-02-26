class Diente < ActiveRecord::Base
  has_many :pedidos_dientes
  has_many :pedidos, through: :pedidos_dientes
end
