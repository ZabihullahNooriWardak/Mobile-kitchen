# app/models/review.rb
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :order

  validates :rating, presence: true, inclusion: { in: 1..10 }
  validates :feedback, presence: true

  validate :order_must_be_delivered

  def order_must_be_delivered
    errors.add(:order, 'must be delivered') unless order&.status == 'delivered'
  end
end
