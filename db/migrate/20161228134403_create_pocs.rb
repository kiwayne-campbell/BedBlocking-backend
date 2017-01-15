class CreatePocs < ActiveRecord::Migration[5.0]
  def change
    create_table :pocs do |t|
      t.string :home_care
      t.string :meals_on_wheels
      t.string :frozen_meals
      t.string :day_care
      t.string :day_hospital
      t.string :district_nurse
      t.string :physio
      t.string :residential_home
      t.string :nursing_home
      t.string :other
      t.string :notes
      t.date :doa
      t.date :dod

      t.timestamps
    end
  end
end
