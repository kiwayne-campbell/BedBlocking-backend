class RemoveDodFromPocs < ActiveRecord::Migration[5.0]
  def change
    remove_column :pocs, :dod, :datatype
  end
end
