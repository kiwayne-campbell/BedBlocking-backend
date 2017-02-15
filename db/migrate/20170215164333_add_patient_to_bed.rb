class AddPatientToBed < ActiveRecord::Migration[5.0]
  def change
    add_reference :beds, :patient, foreign_key: true
  end
end
