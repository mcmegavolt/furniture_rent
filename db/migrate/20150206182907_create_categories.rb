class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.string :image
      t.integer :position

      t.timestamps null: false
    end
    add_index :categories, :slug, unique: true
  end
end
