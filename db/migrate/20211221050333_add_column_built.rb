class AddColumnBuilt < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :built, :string
  end
end
