class AddApiIdToMemories < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :api_id, :string
  end
end
