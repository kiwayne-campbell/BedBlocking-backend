class AddPatientToPoc < ActiveRecord::Migration[5.0]
  def change
    add_reference :pocs, :patient, foreign_key: true
  end
end
