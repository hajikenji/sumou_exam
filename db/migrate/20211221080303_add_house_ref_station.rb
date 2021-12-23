class AddHouseRefStation < ActiveRecord::Migration[6.0]
  def change
    add_reference :near_stations, :house, foreign_key: true
  end
end
