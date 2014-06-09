class TecnicasController < ApplicationController
  before_action :set_tecnica, only: [:show, :edit, :update, :destroy]

  # GET /tecnicas
  # GET /tecnicas.json
  def index
    @tecnicas = Tecnica.all
  end

  # GET /tecnicas/1
  # GET /tecnicas/1.json
  def show
  end

  # GET /tecnicas/new
  def new
    @tecnica = Tecnica.new
  end

  # GET /tecnicas/1/edit
  def edit
  end

  # POST /tecnicas
  # POST /tecnicas.json
  def create
    @tecnica = Tecnica.new(tecnica_params)

    respond_to do |format|
      if @tecnica.save
        format.html { redirect_to @tecnica, notice: 'Tecnica was successfully created.' }
        format.json { render :show, status: :created, location: @tecnica }
      else
        format.html { render :new }
        format.json { render json: @tecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tecnicas/1
  # PATCH/PUT /tecnicas/1.json
  def update
    respond_to do |format|
      if @tecnica.update(tecnica_params)
        format.html { redirect_to @tecnica, notice: 'Tecnica was successfully updated.' }
        format.json { render :show, status: :ok, location: @tecnica }
      else
        format.html { render :edit }
        format.json { render json: @tecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecnicas/1
  # DELETE /tecnicas/1.json
  def destroy
    @tecnica.destroy
    respond_to do |format|
      format.html { redirect_to tecnicas_url, notice: 'Tecnica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tecnica
      @tecnica = Tecnica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tecnica_params
      params.require(:tecnica).permit(:nombre)
    end
end
