class ControlCalidadsController < ApplicationController
  before_action :set_control_calidad, only: [:show, :edit, :update, :destroy]

  # GET /control_calidads
  # GET /control_calidads.json
  def index
    @control_calidads = ControlCalidad.all
  end

  # GET /control_calidads/1
  # GET /control_calidads/1.json
  def show
  end

  # GET /control_calidads/new
  def new
    @control_calidad = ControlCalidad.new
  end

  # GET /control_calidads/1/edit
  def edit
  end

  # POST /control_calidads
  # POST /control_calidads.json
  def create
    @control_calidad = ControlCalidad.new(control_calidad_params)

    respond_to do |format|
      if @control_calidad.save
        format.html { redirect_to @control_calidad, notice: 'Control calidad was successfully created.' }
        format.json { render :show, status: :created, location: @control_calidad }
      else
        format.html { render :new }
        format.json { render json: @control_calidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /control_calidads/1
  # PATCH/PUT /control_calidads/1.json
  def update
    respond_to do |format|
      if @control_calidad.update(control_calidad_params)
        format.html { redirect_to @control_calidad, notice: 'Control calidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @control_calidad }
      else
        format.html { render :edit }
        format.json { render json: @control_calidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /control_calidads/1
  # DELETE /control_calidads/1.json
  def destroy
    @control_calidad.destroy
    respond_to do |format|
      format.html { redirect_to control_calidads_url, notice: 'Control calidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_control_calidad
      @control_calidad = ControlCalidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def control_calidad_params
      params.require(:control_calidad).permit(:fecha, :status, :no_articulos, :articulos_buenos, :articulos_defetuosos, :iteracion, :participante_id, :orden_produccion_id, :articulo_id, :tecnico_id)
    end
end
