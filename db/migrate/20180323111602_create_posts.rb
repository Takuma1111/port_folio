class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :sound
      t.string :video
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
