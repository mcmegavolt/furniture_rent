class ItemImage < ActiveRecord::Base
  belongs_to :item
  acts_as_list scope: :item
  mount_uploader :image, ItemImageUploader
end
