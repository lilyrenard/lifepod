class AddSuggestedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :suggested, :string
  end
end
