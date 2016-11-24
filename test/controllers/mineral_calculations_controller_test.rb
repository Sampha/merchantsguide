require 'test_helper'

class MineralCalculationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mineral_calculation = mineral_calculations(:one)
  end

  test "should get index" do
    get mineral_calculations_url
    assert_response :success
  end

  test "should get new" do
    get new_mineral_calculation_url
    assert_response :success
  end

  test "should create mineral_calculation" do
    assert_difference('MineralCalculation.count') do
      post mineral_calculations_url, params: { mineral_calculation: { alien_one: @mineral_calculation.alien_one, alien_one_name: @mineral_calculation.alien_one_name, alien_two: @mineral_calculation.alien_two, alien_two_name: @mineral_calculation.alien_two_name, mineral: @mineral_calculation.mineral, mineral_name: @mineral_calculation.mineral_name, total_value: @mineral_calculation.total_value } }
    end

    assert_redirected_to mineral_calculation_url(MineralCalculation.last)
  end

  test "should show mineral_calculation" do
    get mineral_calculation_url(@mineral_calculation)
    assert_response :success
  end

  test "should get edit" do
    get edit_mineral_calculation_url(@mineral_calculation)
    assert_response :success
  end

  test "should update mineral_calculation" do
    patch mineral_calculation_url(@mineral_calculation), params: { mineral_calculation: { alien_one: @mineral_calculation.alien_one, alien_one_name: @mineral_calculation.alien_one_name, alien_two: @mineral_calculation.alien_two, alien_two_name: @mineral_calculation.alien_two_name, mineral: @mineral_calculation.mineral, mineral_name: @mineral_calculation.mineral_name, total_value: @mineral_calculation.total_value } }
    assert_redirected_to mineral_calculation_url(@mineral_calculation)
  end

  test "should destroy mineral_calculation" do
    assert_difference('MineralCalculation.count', -1) do
      delete mineral_calculation_url(@mineral_calculation)
    end

    assert_redirected_to mineral_calculations_url
  end
end
