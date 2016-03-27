class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|
      t.string :image
      t.references :item, index: true
      t.boolean :main, default: false

      t.timestamps null: false
    end
    add_foreign_key :item_images, :items
  end
end
