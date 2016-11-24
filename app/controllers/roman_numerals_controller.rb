class RomanNumeralsController < ApplicationController
  before_action :set_roman_numeral, only: [:show, :edit, :update, :destroy]

  # GET /roman_numerals
  # GET /roman_numerals.json
  def index
    @roman_numerals = RomanNumeral.all
  end

  # GET /roman_numerals/1
  # GET /roman_numerals/1.json
  def show
  end

  # GET /roman_numerals/new
  def new
    @roman_numeral = RomanNumeral.new
  end

  # GET /roman_numerals/1/edit
  def edit
  end

  # POST /roman_numerals
  # POST /roman_numerals.json
  def create
    @roman_numeral = RomanNumeral.new(roman_numeral_params)

    respond_to do |format|
      if @roman_numeral.save
        format.html { redirect_to @roman_numeral, notice: 'Roman numeral was successfully created.' }
        format.json { render :show, status: :created, location: @roman_numeral }
      else
        format.html { render :new }
        format.json { render json: @roman_numeral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roman_numerals/1
  # PATCH/PUT /roman_numerals/1.json
  def update
    respond_to do |format|
      if @roman_numeral.update(roman_numeral_params)
        format.html { redirect_to @roman_numeral, notice: 'Roman numeral was successfully updated.' }
        format.json { render :show, status: :ok, location: @roman_numeral }
      else
        format.html { render :edit }
        format.json { render json: @roman_numeral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roman_numerals/1
  # DELETE /roman_numerals/1.json
  def destroy
    @roman_numeral.destroy
    respond_to do |format|
      format.html { redirect_to roman_numerals_url, notice: 'Roman numeral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roman_numeral
      @roman_numeral = RomanNumeral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roman_numeral_params
      params.fetch(:roman_numeral, {})
    end
end
