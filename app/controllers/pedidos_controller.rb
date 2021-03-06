class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = current_user.pedidos.all
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)

    @pedido = current_user.pedidos.new(pedido_params)
    @pedido.file = params[:file]
    
    respond_to do |format|
      if @pedido.save
        format.html { redirect_to @pedido, notice: 'El Pedido se ha realizado' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'El Pedido se ha actualizado' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url, notice: 'El Pedido se ha eliminado' }
      format.json { head :no_content }
    end
  end

  def upload_file(file)
    # Declaring
    uploader = FileUploader.new
    # Upload it
    uploader.store!(file)

    return uploader.url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:nombre, :observacion, :trabajo_id, :material_id, :cover, :archivo, :file, :diente_id)
    end
end
