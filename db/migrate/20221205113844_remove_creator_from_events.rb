class RemoveCreatorFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :creator, :string
  end
end
