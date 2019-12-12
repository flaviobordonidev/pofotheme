class EgComponentsController < ApplicationController
  before_action :set_eg_component, only: [:show, :edit, :update, :destroy]

  # GET /eg_components
  # GET /eg_components.json
  def index
    @eg_components = EgComponent.all
  end

  # GET /eg_components/1
  # GET /eg_components/1.json
  def show
  end

  # GET /eg_components/new
  def new
    @eg_component = EgComponent.new
  end

  # GET /eg_components/1/edit
  def edit
  end

  # POST /eg_components
  # POST /eg_components.json
  def create
    @eg_component = EgComponent.new(eg_component_params)

    respond_to do |format|
      if @eg_component.save
        format.html { redirect_to @eg_component, notice: 'Eg component was successfully created.' }
        format.json { render :show, status: :created, location: @eg_component }
      else
        format.html { render :new }
        format.json { render json: @eg_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eg_components/1
  # PATCH/PUT /eg_components/1.json
  def update
    respond_to do |format|
      if @eg_component.update(eg_component_params)
        format.html { redirect_to @eg_component, notice: 'Eg component was successfully updated.' }
        format.json { render :show, status: :ok, location: @eg_component }
      else
        format.html { render :edit }
        format.json { render json: @eg_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eg_components/1
  # DELETE /eg_components/1.json
  def destroy
    @eg_component.destroy
    respond_to do |format|
      format.html { redirect_to eg_components_url, notice: 'Eg component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eg_component
      @eg_component = EgComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eg_component_params
      params.require(:eg_component).permit(:name, :company_id, :description, :shelf_life, :service_life, :supplier_price_list_expiration_date, :supplier_price_list, :currency, :currency_exchange, :currency_rounding, :supplier_discount, :discount_rounding, :country_of_origin, :custom_tariff_number, :net_weight)
    end
end
