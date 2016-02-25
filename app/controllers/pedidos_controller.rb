class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
=======
  before_action :authenticate_user!
  Ruta_directorio_archivos = "public/archivos/";
>>>>>>> f169e474be587b3ee9ee0633471e5a58ceb41854

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = Pedido.all
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
<<<<<<< HEAD
=======
    @dientes = Diente.all
>>>>>>> f169e474be587b3ee9ee0633471e5a58ceb41854
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
<<<<<<< HEAD
    @pedido = Pedido.new(pedido_params)

=======
    @pedido = current_user.pedidos.new(pedido_params)
    @pedido.dientes = params[:dientes] 
    
>>>>>>> f169e474be587b3ee9ee0633471e5a58ceb41854
    respond_to do |format|
      if @pedido.save
        format.html { redirect_to @pedido, notice: 'Pedido was successfully created.' }
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
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
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
      format.html { redirect_to pedidos_url, notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
<<<<<<< HEAD
      params.require(:pedido).permit(:nombre, :observacion, :trabajo_id, :material_id, :user_id)
=======
      params.require(:pedido).permit(:nombre, :observacion, :trabajo_id, :material_id, :dientes, :cover, :archivo)
>>>>>>> f169e474be587b3ee9ee0633471e5a58ceb41854
    end
end
