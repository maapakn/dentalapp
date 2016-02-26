class TrabajosMaterial < ActiveRecord::Base
  belongs_to :trabajos
  belongs_to :materials
end
