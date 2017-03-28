class FundApplicationsController < ApplicationController
  before_action :set_fund_application, only: [:show, :edit, :update, :destroy]

  # GET /fund_applications
  # GET /fund_applications.json
  def index
    @fund_applications = FundApplication.all
  end

  # GET /fund_applications/1
  # GET /fund_applications/1.json
  def show
  end

  # GET /fund_applications/new
  def new
    @fund_application = FundApplication.new
  end

  # GET /fund_applications/1/edit
  def edit
  end

  # POST /fund_applications
  # POST /fund_applications.json
  def create
    @fund_application = FundApplication.new(fund_application_params)

    respond_to do |format|
      if @fund_application.save
        format.html { redirect_to @fund_application, notice: 'Fund application was successfully created.' }
        format.json { render :show, status: :created, location: @fund_application }
      else
        format.html { render :new }
        format.json { render json: @fund_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_applications/1
  # PATCH/PUT /fund_applications/1.json
  def update
    respond_to do |format|
      if @fund_application.update(fund_application_params)
        format.html { redirect_to @fund_application, notice: 'Fund application was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_application }
      else
        format.html { render :edit }
        format.json { render json: @fund_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_applications/1
  # DELETE /fund_applications/1.json
  def destroy
    @fund_application.destroy
    respond_to do |format|
      format.html { redirect_to fund_applications_url, notice: 'Fund application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_application
      @fund_application = FundApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_application_params
      params.require(:fund_application).permit(:projectedTime, :initialInvestment, :interestRate, :monthlyInvestment, :isStatic)
    end
end
