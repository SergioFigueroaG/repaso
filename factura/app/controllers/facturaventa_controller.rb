class FacturaventaController < ApplicationController
  before_action :set_facturaventum, only: [:show, :edit, :update, :destroy]

  # GET /facturaventa
  # GET /facturaventa.json
  def index
    @facturaventa = Facturaventum.all
  end

  # GET /facturaventa/1
  # GET /facturaventa/1.json
  def show
  end

  # GET /facturaventa/new
  def new
    @facturaventum = Facturaventum.new
  end

  # GET /facturaventa/1/edit
  def edit
  end

  # POST /facturaventa
  # POST /facturaventa.json
  def create
    @facturaventum = Facturaventum.new(facturaventum_params)

    respond_to do |format|
      if @facturaventum.save
        format.html { redirect_to @facturaventum, notice: 'Facturaventum was successfully created.' }
        format.json { render :show, status: :created, location: @facturaventum }
      else
        format.html { render :new }
        format.json { render json: @facturaventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facturaventa/1
  # PATCH/PUT /facturaventa/1.json
  def update
    respond_to do |format|
      if @facturaventum.update(facturaventum_params)
        format.html { redirect_to @facturaventum, notice: 'Facturaventum was successfully updated.' }
        format.json { render :show, status: :ok, location: @facturaventum }
      else
        format.html { render :edit }
        format.json { render json: @facturaventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturaventa/1
  # DELETE /facturaventa/1.json
  def destroy
    @facturaventum.destroy
    respond_to do |format|
      format.html { redirect_to facturaventa_url, notice: 'Facturaventum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facturaventum
      @facturaventum = Facturaventum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facturaventum_params
      params.require(:facturaventum).permit(:nombre_cliente, :nombre_producto, :nit, :cedula, :subtotal, :total, :direccion, :iva, :fecha, :telefono)
    end
end
