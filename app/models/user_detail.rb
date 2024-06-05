class UserDetail < ApplicationRecord
  belongs_to :user

  # Validations (optional but recommended)
  validates :phone_number, presence: true
  validates :name, presence: true
  validates :last_name, presence: true
    # Define the admin attribute
    # attribute :admin, :boolean
end
