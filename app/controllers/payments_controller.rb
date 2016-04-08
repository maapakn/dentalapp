class PaymentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@payment = current_user.payments.new(post_params)
		respond_to do |format|
			if @payment.save
				format.html { redirect_to carrito_path }
				format.json {head :no_content}
			else
				redirect_to Pedido.find(pedido_params[:pedido_id]), error: "No pudimos procesar tu compra"
				format.json {head :no_content}
			end
		end
	end

	def carrito
		@payments = current_user.payments.where(status:1)
	end

	private

	def pedido_params
		params.require(:payment).permit(:pedido_id)
	end
end
