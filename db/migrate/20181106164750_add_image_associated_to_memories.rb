class AddImageAssociatedToMemories < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :image_associated, :string
  end
end
