class MineralCalculationsController < ApplicationController
  before_action :set_mineral_calculation, only: [:show, :edit, :update, :destroy]

  # GET /mineral_calculations
  # GET /mineral_calculations.json
  def index
    @mineral_calculations = MineralCalculation.all
  end

  # GET /mineral_calculations/1
  # GET /mineral_calculations/1.json
  def show
  end

  # GET /mineral_calculations/new
  def new
    @mineral_calculation = MineralCalculation.new
    @alien_numerals = AlienNumeral.all
    @minerals = Mineral.all
  end

  # GET /mineral_calculations/1/edit
  def edit
  end

  # POST /mineral_calculations
  # POST /mineral_calculations.json
  def create
    @mineral_calculation = MineralCalculation.new(mineral_calculation_params)

    respond_to do |format|
      if @mineral_calculation.save
        format.html { redirect_to root_path, notice: 'Mineral calculation was successfully created.' }
        format.json { render :show, status: :created, location: @mineral_calculation }
      else
        format.html { render :new }
        format.json { render json: @mineral_calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mineral_calculations/1
  # PATCH/PUT /mineral_calculations/1.json
  def update
    respond_to do |format|
      if @mineral_calculation.update(mineral_calculation_params)
        format.html { redirect_to @mineral_calculation, notice: 'Mineral calculation was successfully updated.' }
        format.json { render :show, status: :ok, location: @mineral_calculation }
      else
        format.html { render :edit }
        format.json { render json: @mineral_calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mineral_calculations/1
  # DELETE /mineral_calculations/1.json
  def destroy
    @mineral_calculation.destroy
    respond_to do |format|
      format.html { redirect_to mineral_calculations_url, notice: 'Mineral calculation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mineral_calculation
      @mineral_calculation = MineralCalculation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mineral_calculation_params
      params.require(:mineral_calculation).permit(:alien_one, :alien_one_name, :alien_two, :alien_two_name, :mineral, :mineral_name, :total_value)
    end
end
