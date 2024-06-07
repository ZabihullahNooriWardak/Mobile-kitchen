# app/models/food.rb
class Food < ApplicationRecord
 
    has_one_attached :image
    has_many :cart_items, dependent: :destroy
    has_many :carts, through: :cart_items
    has_many :order_items, dependent: :destroy
    has_many :orders, through: :order_items
  # Add any necessary validations
  validates :name, :category, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  end
  