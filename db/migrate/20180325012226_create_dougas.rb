class CreateDougas < ActiveRecord::Migration[5.1]
  def change
    create_table :dougas do |t|
      t.string :douga
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
