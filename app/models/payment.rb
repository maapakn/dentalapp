class Payment < ActiveRecord::Base
	belongs_to :pedido
	belongs_to :user
	validates :pedido_id, presence: true
	validates :user_id, presence: true
	before_save :valores_por_default

	private
	def valores_por_default
		self.status ||= 1
	end
end
