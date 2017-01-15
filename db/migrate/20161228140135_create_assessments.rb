class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.string :medically_stable
      t.string :rehab_in_short_term
      t.string :discharge_destination
      t.string :requires_level_of_nursing_care
      t.string :housing_issues
      t.string :under_age_18
      t.string :mental_health_problems
      t.string :requires_respite_care
      t.string :requires_long_term_placement

      t.timestamps
    end
  end
end
