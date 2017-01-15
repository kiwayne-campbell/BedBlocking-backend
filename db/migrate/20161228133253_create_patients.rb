class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.integer :patient_no
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :diagnosis
      t.string :assesment

      t.timestamps
    end
  end
end
