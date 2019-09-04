class Patron < ApplicationRecord
    has_many :waiters
    has_many :pizzas, through: :waiters

    validates :name, presence: true
end
