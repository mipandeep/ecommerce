class Product < ApplicationRecord
  belongs_to :category
  belongs_to :product_status

  mount_uploader :image, ImageUploader
end
