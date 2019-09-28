class RemoveLocationIdColumnFromReadings < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:readings, :location)
    remove_column(:readings, :location_id, type=Integer)
  end
end
