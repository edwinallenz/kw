class OrdenProduccionsController < ApplicationController
  before_action :set_orden_produccion, only: [:show, :edit, :update, :destroy]

  # GET /orden_produccions
  # GET /orden_produccions.json
  def index
    @orden_produccions = OrdenProduccion.all
  end

  # GET /orden_produccions/1
  # GET /orden_produccions/1.json
  def show
  end

  # GET /orden_produccions/new
  def new
    @orden_produccion = OrdenProduccion.new
  end

  # GET /orden_produccions/1/edit
  def edit
  end

  # POST /orden_produccions
  # POST /orden_produccions.json
  def create
    @orden_produccion = OrdenProduccion.new(orden_produccion_params)

    respond_to do |format|
      if @orden_produccion.save
        format.html { redirect_to @orden_produccion, notice: 'Orden produccion was successfully created.' }
        format.json { render :show, status: :created, location: @orden_produccion }
      else
        format.html { render :new }
        format.json { render json: @orden_produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orden_produccions/1
  # PATCH/PUT /orden_produccions/1.json
  def update
    respond_to do |format|
      if @orden_produccion.update(orden_produccion_params)
        format.html { redirect_to @orden_produccion, notice: 'Orden produccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @orden_produccion }
      else
        format.html { render :edit }
        format.json { render json: @orden_produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_produccions/1
  # DELETE /orden_produccions/1.json
  def destroy
    @orden_produccion.destroy
    respond_to do |format|
      format.html { redirect_to orden_produccions_url, notice: 'Orden produccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden_produccion
      @orden_produccion = OrdenProduccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orden_produccion_params
      params.require(:orden_produccion).permit(:fecha, :fecha_entrega, :no, :tipo, :estado, :priridad, :cantidad, :unidades_pleneadas, :unidades_real, :empresa_id, :articulo_id)
    end
end
