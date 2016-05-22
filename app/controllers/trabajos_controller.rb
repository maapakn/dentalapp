class TrabajosController < ApplicationController
  before_action :set_trabajo, only: [:show, :edit, :update, :destroy]

  # GET /trabajos
  # GET /trabajos.json
  def index
    @trabajos = Trabajo.all
  end

  # GET /trabajos/1
  # GET /trabajos/1.json
  def show
  end

  # GET /trabajos/new
  def new
    @trabajo = Trabajo.new
  end

  # GET /trabajos/1/edit
  def edit
  end

  # POST /trabajos
  # POST /trabajos.json
  def create
    @trabajo = Trabajo.new(trabajo_params)

    respond_to do |format|
      if @trabajo.save
        format.html { redirect_to @trabajo, notice: 'Trabajo was successfully created.' }
        format.json { render :show, status: :created, location: @trabajo }
      else
        format.html { render :new }
        format.json { render json: @trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabajos/1
  # PATCH/PUT /trabajos/1.json
  def update
    respond_to do |format|
      if @trabajo.update(trabajo_params)
        format.html { redirect_to @trabajo, notice: 'Trabajo was successfully updated.' }
        format.json { render :show, status: :ok, location: @trabajo }
      else
        format.html { render :edit }
        format.json { render json: @trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabajos/1
  # DELETE /trabajos/1.json
  def destroy
    @trabajo.destroy
    respond_to do |format|
      format.html { redirect_to trabajos_url, notice: 'Trabajo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabajo
      @trabajo = Trabajo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trabajo_params
      params.require(:trabajo).permit(:nombre, :precio)
    end
  end
end