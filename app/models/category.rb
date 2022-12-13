class Category < ApplicationRecord
    has_many :items
    has_many :menus, through: :items
    validates :name, presence: true
    validates :name, uniqueness: true
end