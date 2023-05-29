class Profimage < ApplicationRecord
  validates :user_id, presence: true
  validates :image, presence: true
  validate :validate_image_type
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
end