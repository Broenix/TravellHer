class AddCreatorsToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :creator, :string
  end
end
