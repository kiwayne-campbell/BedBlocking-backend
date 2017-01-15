require 'test_helper'

class PocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poc = pocs(:one)
  end

  test "should get index" do
    get pocs_url, as: :json
    assert_response :success
  end

  test "should create poc" do
    assert_difference('Poc.count') do
      post pocs_url, params: { poc: { day_care: @poc.day_care, day_hospital: @poc.day_hospital, district_nurse: @poc.district_nurse, doa: @poc.doa, dod: @poc.dod, frozen_meals: @poc.frozen_meals, home_care: @poc.home_care, meals_on_wheels: @poc.meals_on_wheels, notes: @poc.notes, nursing_home: @poc.nursing_home, other: @poc.other, physio: @poc.physio, residential_home: @poc.residential_home } }, as: :json
    end

    assert_response 201
  end

  test "should show poc" do
    get poc_url(@poc), as: :json
    assert_response :success
  end

  test "should update poc" do
    patch poc_url(@poc), params: { poc: { day_care: @poc.day_care, day_hospital: @poc.day_hospital, district_nurse: @poc.district_nurse, doa: @poc.doa, dod: @poc.dod, frozen_meals: @poc.frozen_meals, home_care: @poc.home_care, meals_on_wheels: @poc.meals_on_wheels, notes: @poc.notes, nursing_home: @poc.nursing_home, other: @poc.other, physio: @poc.physio, residential_home: @poc.residential_home } }, as: :json
    assert_response 200
  end

  test "should destroy poc" do
    assert_difference('Poc.count', -1) do
      delete poc_url(@poc), as: :json
    end

    assert_response 204
  end
end
