class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: { maximum: 40 }
  validates :image, presence: true
end
