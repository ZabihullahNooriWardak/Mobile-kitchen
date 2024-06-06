# app/models/food.rb
class Food < ApplicationRecord
 
    has_one_attached :image

  # Add any necessary validations
  validates :name, :category, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  end
  