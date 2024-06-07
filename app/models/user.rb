class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one :cart, dependent: :destroy
         has_many :orders, dependent: :destroy
        # Association with UserDetail
  has_one :user_detail, dependent: :destroy
  accepts_nested_attributes_for :user_detail
       
end
