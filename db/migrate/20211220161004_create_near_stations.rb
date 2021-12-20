class CreateNearStations < ActiveRecord::Migration[6.0]
  def change
    create_table :near_stations do |t|
      t.string :station
      t.reference :house, foreign_key: true

      t.timestamps
    end
  end
end
