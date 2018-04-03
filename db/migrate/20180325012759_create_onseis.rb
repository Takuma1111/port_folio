class CreateOnseis < ActiveRecord::Migration[5.1]
  def change
    create_table :onseis do |t|
      t.string :onsei
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
