# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customers = Customer.create([
  {
    first_name: "test",
    last_name: "user"
  },
  {
    first_name: "Andrew",
    last_name: "Jiang"
  }
])

orders = Order.create([
  {
    customer_id: 1,
  },
  {
    customer_id: 1,
    status: "On the Way"
  },
  {
    customer_id: 1,
    status: "Delivered"
  },
  {
    customer_id: 1,
    status: "Delivered"
  },
  {
    customer_id: 2,
    status: "Delivered"
  },
  {
    customer_id: 2,
    status: "On the Way"
  },
  {
    customer_id: 2,
    status: "On the Way"
  }
])
