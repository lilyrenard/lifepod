class CreateStamps < ActiveRecord::Migration[5.2]
  def change
    create_table :stamps do |t|
      t.string :title
      t.string :stamp_image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
