class RenameRamarks < ActiveRecord::Migration[6.0]
  def change
    rename_column :houses, :ramarks, :remarks
  end
end
