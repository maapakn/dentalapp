class Pedido < ActiveRecord::Base
  belongs_to :trabajo
  belongs_to :material
  belongs_to :user
  has_many :pedidos_dientes
  has_many :dientes, through: :pedidos_dientes

  has_attached_file :cover, presence: true, style: { medium: "1280x720", thumb:"800x600" }
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  has_attached_file :archivo, presence: true
  validates_attachment_content_type :archivo, content_type: { content_type: "application/vnd.ms-pki.stl" }

  #after_create :save_dientes

  def dientes=(value)
  	@dientes = value
  end

  private

  #def save_dientes
  #	@dientes.each do |diente_id|
  #		PedidosDiente.create(diente_id: diente_id, pedido_id: self.id)
  #	end
  #end

end
