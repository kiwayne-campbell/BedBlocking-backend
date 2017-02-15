class RemoveDobFromPatients < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :dob, :datatype
  end
end
