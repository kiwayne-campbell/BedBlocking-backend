class AssessmentSerializer < ActiveModel::Serializer
  attributes :id, :medically_stable, :rehab_in_short_term, :discharge_destination, :requires_level_of_nursing_care, :housing_issues, :under_age_18, :mental_health_problems, :requires_respite_care, :requires_long_term_placement
end
