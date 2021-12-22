class AddStationColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :near_stations, :route_name, :string
    add_column :near_stations, :time_on_foot, :integer

  end
end
