class AddSuggestedToMemories < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :suggested, :boolean, default: true
  end
end
