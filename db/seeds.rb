Patron.delete_all
Pizza.delete_all
Waiter.delete_all

daniel = Patron.create!(name: "Daniel")
dan = Patron.create!(name: "Dan")
jonathan = Patron.create!(name: "Jonathan")
tracie = Patron.create!(name: "Tracie")

pepperoni = Pizza.create!(name: "Pepperoni Pizza", cheese: "Mozarella", sauce: "Tomato", topping_one: "Pepperoni", topping_two: "none", price: 10)
three_cheese_pizza = Pizza.create!(name: "Three Cheese Pizza", cheese: "Mozarella", sauce: "Tomato", topping_one: "Ricotta Cheese", topping_two: "Goat Cheese", price: 10)
chicken_parm_pizza = Pizza.create!(name: "Chicken Parm Pizza", cheese: "Mozarella", sauce: "Tomato", topping_one: "Chicken", topping_two: "Parmesan", price: 15)
ziti_pizza = Pizza.create!(name: "Ziti Pizza", cheese: "Ricotta Cheese", sauce: "none", topping_one: "Ziti Pasta", topping_two: "Oregano", price: 17)
tequila_lobser_pizza = Pizza.create!(name: "Tequila Lobster Pizza", cheese: "Ricotta Cheese", sauce: "marinara", topping_one: "Lobster", topping_two: "Tequila", price: 500)


Waiter.create!(name: "Bob", pizza_id: pepperoni.id, patron_id: tracie.id)
Waiter.create!(name: "Tom", pizza_id: ziti_pizza.id, patron_id: jonathan.id)
Waiter.create!(name: "Harry", pizza_id: three_cheese_pizza.id, patron_id: daniel.id)
Waiter.create!(name: "Steve", pizza_id: tequila_lobser_pizza.id, patron_id: dan.id)
Waiter.create!(name: "Joe", pizza_id: chicken_parm_pizza.id, patron_id: dan.id)
