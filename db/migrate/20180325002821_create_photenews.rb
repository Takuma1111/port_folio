class CreatePhotenews < ActiveRecord::Migration[5.1]
  def change
    create_table :photenews do |t|
      t.string :image
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
