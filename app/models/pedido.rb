class Pedido < ActiveRecord::Base
  include AASM
  belongs_to :trabajo
  belongs_to :material
  belongs_to :user
  belongs_to :diente
  has_many :payments

  has_attached_file :cover, presence: true, style: { medium: "1280x720", thumb:"800x600" }
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  aasm column: "state" do
    state :recibido, initial: true
    state :diseño
    state :proceso
    state :terminado
    state :proceso
    state :despachado
    event :aDiseño do
      transitions from: :recibido, to: :diseño
    end
    event :aProceso do
      transitions from: :diseño, to: :proceso
    end
    event :aTerminado do
      transitions from: :proceso, to: :terminado
    end
    event :aDespachado do
      transitions from: :terminado, to: :despachado
    end
  end

  mount_uploader :file, FileUploader

  validates :nombre, presence: true, length:{in:4..35, 
            too_short:"ingresado es demasiado corto (4 caracteres minimo)", 
            too_long:"ingresado es demasiado largo"}
  validates_presence_of :diente

  def dientes=(value)
    @dientes = value
  end

end
