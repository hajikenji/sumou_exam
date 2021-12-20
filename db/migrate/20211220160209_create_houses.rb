class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :rent
      t.string :residence
      t.text :ramarks

      t.timestamps
    end
  end
end
