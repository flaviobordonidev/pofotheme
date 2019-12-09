class EgCompaniesController < ApplicationController
  before_action :set_eg_company, only: [:show, :edit, :update, :destroy]

  # GET /eg_companies
  # GET /eg_companies.json
  def index
    @eg_companies = EgCompany.all
  end

  # GET /eg_companies/1
  # GET /eg_companies/1.json
  def show
  end

  # GET /eg_companies/new
  def new
    @eg_company = EgCompany.new
  end

  # GET /eg_companies/1/edit
  def edit
  end

  # POST /eg_companies
  # POST /eg_companies.json
  def create
    @eg_company = EgCompany.new(eg_company_params)

    respond_to do |format|
      if @eg_company.save
        format.html { redirect_to @eg_company, notice: 'Eg company was successfully created.' }
        format.json { render :show, status: :created, location: @eg_company }
      else
        format.html { render :new }
        format.json { render json: @eg_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eg_companies/1
  # PATCH/PUT /eg_companies/1.json
  def update
    respond_to do |format|
      if @eg_company.update(eg_company_params)
        format.html { redirect_to @eg_company, notice: 'Eg company was successfully updated.' }
        format.json { render :show, status: :ok, location: @eg_company }
      else
        format.html { render :edit }
        format.json { render json: @eg_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eg_companies/1
  # DELETE /eg_companies/1.json
  def destroy
    @eg_company.destroy
    respond_to do |format|
      format.html { redirect_to eg_companies_url, notice: 'Eg company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eg_company
      @eg_company = EgCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eg_company_params
      params.require(:eg_company).permit(:name, :note)
    end
end
