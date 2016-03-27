class Category < ActiveRecord::Base
  acts_as_list
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  mount_uploader :image, CategoryUploader
  has_many :items, dependent: :destroy
  validates_presence_of :name
end
