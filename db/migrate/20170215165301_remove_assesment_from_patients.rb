class RemoveAssesmentFromPatients < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :assesment, :datatype
  end
end
