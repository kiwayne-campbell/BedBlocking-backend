require 'test_helper'

class AssessmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assessment = assessments(:one)
  end

  test "should get index" do
    get assessments_url, as: :json
    assert_response :success
  end

  test "should create assessment" do
    assert_difference('Assessment.count') do
      post assessments_url, params: { assessment: { discharge_destination: @assessment.discharge_destination, housing_issues: @assessment.housing_issues, medically_stable: @assessment.medically_stable, mental_health_problems: @assessment.mental_health_problems, rehab_in_short_term: @assessment.rehab_in_short_term, requires_level_of_nursing_care: @assessment.requires_level_of_nursing_care, requires_long_term_placement: @assessment.requires_long_term_placement, requires_respite_care: @assessment.requires_respite_care, under_age_18: @assessment.under_age_18 } }, as: :json
    end

    assert_response 201
  end

  test "should show assessment" do
    get assessment_url(@assessment), as: :json
    assert_response :success
  end

  test "should update assessment" do
    patch assessment_url(@assessment), params: { assessment: { discharge_destination: @assessment.discharge_destination, housing_issues: @assessment.housing_issues, medically_stable: @assessment.medically_stable, mental_health_problems: @assessment.mental_health_problems, rehab_in_short_term: @assessment.rehab_in_short_term, requires_level_of_nursing_care: @assessment.requires_level_of_nursing_care, requires_long_term_placement: @assessment.requires_long_term_placement, requires_respite_care: @assessment.requires_respite_care, under_age_18: @assessment.under_age_18 } }, as: :json
    assert_response 200
  end

  test "should destroy assessment" do
    assert_difference('Assessment.count', -1) do
      delete assessment_url(@assessment), as: :json
    end

    assert_response 204
  end
end
