class Pedido < ActiveRecord::Base
  belongs_to :trabajo
  belongs_to :material
  belongs_to :user
  has_many :payments
  has_many :pedidos_dientes
  has_many :dientes, through: :pedidos_dientes

  has_attached_file :cover, presence: true, style: { medium: "1280x720", thumb:"800x600" }
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  mount_uploader :file, FileUploader
  #validate :mime_type_of ,:if => :if_changed?
  #AVAILABLE_MIMETYPE = %w(stl)

  def dientes=(value)
    @dientes = value
  end

  private

  #def mime_type_of
  #  AVAILABLE::MIMETYPE.include?(MIME::Types.type_for[file_path][0]) 
  #end

  #def if_changed?
  #  new_record? or file_changed?
  #end

  
  
end
