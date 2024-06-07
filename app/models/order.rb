class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  has_many :foods, through: :order_items

  validates :address, :guests_number, :date, presence: true
  scope :pending, -> { where(status: 'pending') }
  scope :in_progress, -> { where(status: 'in_progress') }
  scope :delivered, -> { where(status: 'delivered') }
end
