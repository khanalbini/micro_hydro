class MonthlyPowerConsumptionsController < ApplicationController
  before_action :set_monthly_power_consumption, only: [:show, :edit, :update, :destroy]

  # GET /monthly_power_consumptions
  # GET /monthly_power_consumptions.json
  def index
    @monthly_power_consumptions = MonthlyPowerConsumption.all
  end

  # GET /monthly_power_consumptions/1
  # GET /monthly_power_consumptions/1.json
  def show
  end

  # GET /monthly_power_consumptions/new
  def new
    @monthly_power_consumption = MonthlyPowerConsumption.new
  end

  # GET /monthly_power_consumptions/1/edit
  def edit
  end

  # POST /monthly_power_consumptions
  # POST /monthly_power_consumptions.json
  def create
    @monthly_power_consumption = MonthlyPowerConsumption.new(monthly_power_consumption_params)

    respond_to do |format|
      if @monthly_power_consumption.save
        format.html { redirect_to @monthly_power_consumption, notice: 'Monthly power consumption was successfully created.' }
        format.json { render :show, status: :created, location: @monthly_power_consumption }
      else
        format.html { render :new }
        format.json { render json: @monthly_power_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monthly_power_consumptions/1
  # PATCH/PUT /monthly_power_consumptions/1.json
  def update
    respond_to do |format|
      if @monthly_power_consumption.update(monthly_power_consumption_params)
        format.html { redirect_to @monthly_power_consumption, notice: 'Monthly power consumption was successfully updated.' }
        format.json { render :show, status: :ok, location: @monthly_power_consumption }
      else
        format.html { render :edit }
        format.json { render json: @monthly_power_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monthly_power_consumptions/1
  # DELETE /monthly_power_consumptions/1.json
  def destroy
    @monthly_power_consumption.destroy
    respond_to do |format|
      format.html { redirect_to monthly_power_consumptions_url, notice: 'Monthly power consumption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monthly_power_consumption
      @monthly_power_consumption = MonthlyPowerConsumption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monthly_power_consumption_params
      params.require(:monthly_power_consumption).permit(:kwhpm, :month_int, :year, :consumer_id)
    end
end
