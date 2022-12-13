class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, 
          :rememberable, :validatable

  has_many :orders
  has_one :cart
  has_many :items, through: :orders
  has_many :items, through: :cart
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    def current_items
      self.cart.items
    end
end
