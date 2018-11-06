class AddSpotifyAlreadyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :spotify_already, :boolean, default: false
  end
end
