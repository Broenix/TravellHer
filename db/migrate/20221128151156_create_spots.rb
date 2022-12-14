class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :location
      t.float :rating
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
