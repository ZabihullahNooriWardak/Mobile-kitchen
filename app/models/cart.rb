class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy
  has_many :foods, through: :cart_items
  def total_price
    cart_items.includes(:food).sum { |item| item.food.price }
  end
end
