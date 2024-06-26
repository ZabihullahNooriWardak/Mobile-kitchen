# app/models/prebuilt_menu.rb
class PrebuiltMenu < ApplicationRecord
  has_and_belongs_to_many :foods
  has_one_attached :image
  has_many :orders, dependent: :destroy

  validates :name, :cost, presence: true
end
