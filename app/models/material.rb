class Material < ActiveRecord::Base
  belongs_to :trabajo
  has_many :pedidos
end
