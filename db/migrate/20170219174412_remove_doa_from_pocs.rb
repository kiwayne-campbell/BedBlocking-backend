class RemoveDoaFromPocs < ActiveRecord::Migration[5.0]
  def change
    remove_column :pocs, :doa, :datatype
  end
end
