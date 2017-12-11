class Product < ApplicationRecord
  has_many :order_items

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  
  has_attached_file :product_img, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :product_img, content_type: /\Aimage\/.*\z/
end
