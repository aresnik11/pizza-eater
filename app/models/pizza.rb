class Pizza < ApplicationRecord
    has_many :waiters
    has_many :patrons, through: :waiters

    validates :name, :cheese, :sauce, :topping_one, :topping_two, :price, presence: true
    validates :name, uniqueness: { case_sensitive: false }
    validate :topping_one_and_topping_two_unique

    def topping_one_and_topping_two_unique
        if self.topping_one == self.topping_two
            errors.add(:topping_two, "can't be the same as topping one")
        end
    end

    def self.cheeses
        Pizza.all.map do |pizza|
            pizza.cheese
        end.uniq
    end

    def self.toppings
        toppings_one = Pizza.all.map do |pizza|
            pizza.topping_one
        end.uniq

        toppings_two = Pizza.all.map do |pizza|
            pizza.topping_two
        end.uniq

        toppings_one.concat(toppings_two).flatten.uniq
    end
end
