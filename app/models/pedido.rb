class Pedido < ActiveRecord::Base
  belongs_to :trabajo
  belongs_to :material
  belongs_to :user
end
