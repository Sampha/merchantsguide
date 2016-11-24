require 'test_helper'

class AlienNumeralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alien_numeral = alien_numerals(:one)
  end

  test "should get index" do
    get alien_numerals_url
    assert_response :success
  end

  test "should get new" do
    get new_alien_numeral_url
    assert_response :success
  end

  test "should create alien_numeral" do
    assert_difference('AlienNumeral.count') do
      post alien_numerals_url, params: { alien_numeral: { alien: @alien_numeral.alien, value: @alien_numeral.value } }
    end

    assert_redirected_to alien_numeral_url(AlienNumeral.last)
  end

  test "should show alien_numeral" do
    get alien_numeral_url(@alien_numeral)
    assert_response :success
  end

  test "should get edit" do
    get edit_alien_numeral_url(@alien_numeral)
    assert_response :success
  end

  test "should update alien_numeral" do
    patch alien_numeral_url(@alien_numeral), params: { alien_numeral: { alien: @alien_numeral.alien, value: @alien_numeral.value } }
    assert_redirected_to alien_numeral_url(@alien_numeral)
  end

  test "should destroy alien_numeral" do
    assert_difference('AlienNumeral.count', -1) do
      delete alien_numeral_url(@alien_numeral)
    end

    assert_redirected_to alien_numerals_url
  end
end
