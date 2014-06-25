class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :space_number
      t.belongs_to :lot, index: true

      t.timestamps
    end
  end
end
