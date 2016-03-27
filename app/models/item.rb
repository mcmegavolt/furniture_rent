class Item < ActiveRecord::Base
    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
    belongs_to :category
    has_many :images, -> { order("position ASC") }, dependent: :destroy, class_name: 'ItemImage'
    validates_presence_of :name
    after_create :create_item_image

    def create_item_image
      unless self.images.present?
	    self.images.build
        self.save
      end
    end
end
