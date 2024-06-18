class PrebuiltMenu < ApplicationRecord
    has_and_belongs_to_many :foods
    has_one_attached :image
    validates :name, :cost, presence: true
  end
  