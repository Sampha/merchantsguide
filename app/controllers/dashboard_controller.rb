class DashboardController < ApplicationController

  def dashboard
    @romannumerals = RomanNumeral.all
  end

end
