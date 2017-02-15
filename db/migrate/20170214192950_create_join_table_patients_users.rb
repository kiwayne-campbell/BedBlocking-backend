class CreateJoinTablePatientsUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :patients, :users do |t|
      # t.index [:patient_id, :user_id]
      # t.index [:user_id, :patient_id]
    end
  end
end
