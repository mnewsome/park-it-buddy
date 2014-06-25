class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :manufacturer
      t.string :model
      t.date :year
      t.string :license_plate

      t.timestamps
    end
  end
end
