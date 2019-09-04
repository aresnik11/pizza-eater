class Waiter < ApplicationRecord
  belongs_to :pizza
  belongs_to :patron

  validates :name, :pizza_id, :patron_id, presence: true

  def patrons
    Patron.all.select do |patron|
      self.patron_id == patron.id
    end
  end

  def pizzas
    Pizza.all.select do |pizza|
      self.pizza_id == pizza.id
    end
  end
end
