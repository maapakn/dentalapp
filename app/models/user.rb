class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pedidos


  validates :nombre, presence: true, length:{in:4..20, 
      too_short:"Revisa el nombre ingresado, parece demasiado corto", 
      too_long:"Revisa el nombre ingresado, parece demasiado largo"}
      validates :rut, rut: true, uniqueness: {case_sensitive: false ,message: "ya existe"}
  validates_format_of :rut,
                      :with => /\A(\d{1,3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i,
                      :message => "Formato no Valido EJ: 12.345.678-k"
  validates :direccion, presence: true
  validates :telefono, presence: true, numericality: true


end
