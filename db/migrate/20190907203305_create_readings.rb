class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.references :location, foreign_key: true
      t.float :temperature

      t.timestamps
    end
  end
end
