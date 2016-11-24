class DashboardController < ApplicationController

  def dashboard
    @romannumerals = RomanNumeral.all
    @alien_numerals = AlienNumeral.all
    @minerals = Mineral.all
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_alien_numeral
    @alien_numeral = AlienNumeral.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def alien_numeral_params
    params.permit(:alien_numeral, :value)
  end
end
