# app/models/food.rb
class Food < ApplicationRecord
  has_one_attached :image
  has_many :cart_items, dependent: :destroy
  has_many :carts, through: :cart_items
  has_many :order_items, dependent: :destroy
  has_many :orders, through: :order_items
  has_and_belongs_to_many :prebuilt_menus

  validates :name, :category, :price, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
