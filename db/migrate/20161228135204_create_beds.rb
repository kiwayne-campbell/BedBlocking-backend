class CreateBeds < ActiveRecord::Migration[5.0]
  def change
    create_table :beds do |t|
      t.string :hospital_name
      t.string :hospital_location
      t.string :beds_available

      t.timestamps
    end
  end
end
