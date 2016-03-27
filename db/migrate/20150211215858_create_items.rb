class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2, :default => 0.00
      t.string :code
      t.integer :height
      t.integer :width
      t.integer :depth
      t.text :composition
      t.string :color
      t.string :slug

      t.timestamps null: false
    end
    add_index :items, :slug, unique: true
  end
end
