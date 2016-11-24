class AlienNumeralsController < ApplicationController
  before_action :set_alien_numeral, only: [:show, :edit, :update, :destroy]

  # GET /alien_numerals
  # GET /alien_numerals.json
  def index
    @alien_numerals = AlienNumeral.all
  end

  # GET /alien_numerals/1
  # GET /alien_numerals/1.json
  def show
  end

  # GET /alien_numerals/new
  def new
    @roman_numerals = RomanNumeral.all
    @alien_numeral = AlienNumeral.new
  end

  # GET /alien_numerals/1/edit
  def edit
  end

  # POST /alien_numerals
  # POST /alien_numerals.json
  def create
    @roman_numerals = RomanNumeral.all
    @alien_numeral = AlienNumeral.new(alien_numeral_params)

    respond_to do |format|
      if @alien_numeral.save
        format.html { redirect_to root_path, notice: 'Alien numeral was successfully created.' }
        format.json { render :show, status: :created, location: @alien_numeral }
      else
        format.html { render :new }
        format.json { render json: @alien_numeral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alien_numerals/1
  # PATCH/PUT /alien_numerals/1.json
  def update
    respond_to do |format|
      if @alien_numeral.update(alien_numeral_params)
        format.html { redirect_to @alien_numeral, notice: 'Alien numeral was successfully updated.' }
        format.json { render :show, status: :ok, location: @alien_numeral }
      else
        format.html { render :edit }
        format.json { render json: @alien_numeral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alien_numerals/1
  # DELETE /alien_numerals/1.json
  def destroy
    @alien_numeral.destroy
    respond_to do |format|
      format.html { redirect_to alien_numerals_url, notice: 'Alien numeral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alien_numeral
      @alien_numeral = AlienNumeral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alien_numeral_params
      params.require(:alien_numeral).permit(:alien, :value)
    end
end
