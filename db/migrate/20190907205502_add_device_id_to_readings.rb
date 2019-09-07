class AddDeviceIdToReadings < ActiveRecord::Migration[5.2]
  def change
    add_reference :readings, :device, foreign_key: true
  end
end
