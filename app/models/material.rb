class Material < ActiveRecord::Base
  has_many :pedidos
  has_many :trabajos_materials
  has_many :trabajos, through: :trabajos_materials

  after_create :save_trabajos

  def trabajos=(values)
  	@trabajos = values
  end

  private

  def save_trabajos
  	@trabajos.each do |trabajo_id|
  		TrabajosMaterial.create(trabajo_id: trabajo_id, material_id: self.id)
  	end
  end
end
