class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :name
      t.integer :number_of_spaces

      t.timestamps
    end
  end
end
