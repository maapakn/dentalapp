class RegistrationsController < Devise::RegistrationsController
	def new
		super
	end
	def create
		super
	end
	def update
		super
	end
	private
	def sign_up_params
		allow = [:email, :nombre,:telefono, :owner, :userconvenio, :supervisor, :direccion, :rut, :facturacion, :roles_mask, :password, :password_confirmation]
		params.require(resource_name).permit(allow)
	end

	def account_update_params
		allow = [:email, :nombre, :direccion , :owner, :userconvenio, :supervisor, :telefono, :rut, :password, :facturacion, :roles_mask, :password_confirmation, :current_password]
		params.require(resource_name).permit(allow)
	end
end