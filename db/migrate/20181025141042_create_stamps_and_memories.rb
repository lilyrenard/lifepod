class CreateStampsAndMemories < ActiveRecord::Migration[5.2]
  def change
    create_join_table :stamps, :memories
  end
end
