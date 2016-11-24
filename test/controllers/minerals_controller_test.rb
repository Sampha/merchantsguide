require 'test_helper'

class MineralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mineral = minerals(:one)
  end

  test "should get index" do
    get minerals_url
    assert_response :success
  end

  test "should get new" do
    get new_mineral_url
    assert_response :success
  end

  test "should create mineral" do
    assert_difference('Mineral.count') do
      post minerals_url, params: { mineral: { alien_value_one: @mineral.alien_value_one, alien_value_two: @mineral.alien_value_two, name: @mineral.name, total: @mineral.total, value: @mineral.value } }
    end

    assert_redirected_to mineral_url(Mineral.last)
  end

  test "should show mineral" do
    get mineral_url(@mineral)
    assert_response :success
  end

  test "should get edit" do
    get edit_mineral_url(@mineral)
    assert_response :success
  end

  test "should update mineral" do
    patch mineral_url(@mineral), params: { mineral: { alien_value_one: @mineral.alien_value_one, alien_value_two: @mineral.alien_value_two, name: @mineral.name, total: @mineral.total, value: @mineral.value } }
    assert_redirected_to mineral_url(@mineral)
  end

  test "should destroy mineral" do
    assert_difference('Mineral.count', -1) do
      delete mineral_url(@mineral)
    end

    assert_redirected_to minerals_url
  end
end
