class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
