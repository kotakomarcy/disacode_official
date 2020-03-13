class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :admin_user
  
  validates :name, presence: true, length: { maximum: 40 }
  validates :image, presence: true
end
