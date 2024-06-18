# app/models/order.rb
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :prebuilt_menu, optional: true
  has_many :order_items, dependent: :destroy
  has_many :foods, through: :order_items

  validates :address, :guests_number, :full_name, :phone_number, :date, presence: true

  scope :pending, -> { where(status: 'pending') }
  scope :in_progress, -> { where(status: 'in_progress') }
  scope :delivered, -> { where(status: 'delivered') }

  def total_cost
    if prebuilt_menu.present?
      total_menu_cost = prebuilt_menu.cost
      total_menu_cost * guests_number
    else
      total_menu_cost = foods.sum(:price)
      total_menu_cost * guests_number
    end
  end
end
