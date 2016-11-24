require 'test_helper'

class RomanNumeralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roman_numeral = roman_numerals(:one)
  end

  test "should get index" do
    get roman_numerals_url
    assert_response :success
  end

  test "should get new" do
    get new_roman_numeral_url
    assert_response :success
  end

  test "should create roman_numeral" do
    assert_difference('RomanNumeral.count') do
      post roman_numerals_url, params: { roman_numeral: {  } }
    end

    assert_redirected_to roman_numeral_url(RomanNumeral.last)
  end

  test "should show roman_numeral" do
    get roman_numeral_url(@roman_numeral)
    assert_response :success
  end

  test "should get edit" do
    get edit_roman_numeral_url(@roman_numeral)
    assert_response :success
  end

  test "should update roman_numeral" do
    patch roman_numeral_url(@roman_numeral), params: { roman_numeral: {  } }
    assert_redirected_to roman_numeral_url(@roman_numeral)
  end

  test "should destroy roman_numeral" do
    assert_difference('RomanNumeral.count', -1) do
      delete roman_numeral_url(@roman_numeral)
    end

    assert_redirected_to roman_numerals_url
  end
end
