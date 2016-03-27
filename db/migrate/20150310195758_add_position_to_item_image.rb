class AddPositionToItemImage < ActiveRecord::Migration
  def change
    add_column :item_images, :position, :integer
  end
end
