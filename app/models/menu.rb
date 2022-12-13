class Menu < ApplicationRecord
    has_many :items
    has_many :categories, through: :items
    validates :name, presence: true
    validates :name, uniqueness: true
end
