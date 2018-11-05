class AddSpotifyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :spotify, :string
  end
end
