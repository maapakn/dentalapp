class DientesController < ApplicationController
  before_action :set_diente, only: [:show, :edit, :update, :destroy]

  # GET /dientes
  # GET /dientes.json
  def index
    @dientes = Diente.all
  end

  # GET /dientes/1
  # GET /dientes/1.json
  def show
  end

  # GET /dientes/new
  def new
    @diente = Diente.new
  end

  # GET /dientes/1/edit
  def edit
  end

  # POST /dientes
  # POST /dientes.json
  def create
    @diente = Diente.new(diente_params)

    respond_to do |format|
      if @diente.save
        format.html { redirect_to @diente, notice: 'Diente was successfully created.' }
        format.json { render :show, status: :created, location: @diente }
      else
        format.html { render :new }
        format.json { render json: @diente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dientes/1
  # PATCH/PUT /dientes/1.json
  def update
    respond_to do |format|
      if @diente.update(diente_params)
        format.html { redirect_to @diente, notice: 'Diente was successfully updated.' }
        format.json { render :show, status: :ok, location: @diente }
      else
        format.html { render :edit }
        format.json { render json: @diente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dientes/1
  # DELETE /dientes/1.json
  def destroy
    @diente.destroy
    respond_to do |format|
      format.html { redirect_to dientes_url, notice: 'Diente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diente
      @diente = Diente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diente_params
      params.require(:diente).permit(:numero)
    end
end
