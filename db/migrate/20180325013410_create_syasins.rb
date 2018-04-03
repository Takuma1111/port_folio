class CreateSyasins < ActiveRecord::Migration[5.1]
  def change
    create_table :syasins do |t|
      t.string :syasin
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
