class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :cheese
      t.string :sauce
      t.string :topping_one
      t.string :topping_two
      t.integer :price

      t.timestamps
    end
  end
end
