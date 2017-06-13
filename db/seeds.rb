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

products = Product.create([
  {
    order_id: 1,
    order_count: 1,
    product_name: "Milk",
    in_stock: true
  },
  {
    order_id: 1,
    order_count: 12,
    product_name: "Eggs",
    in_stock: true
  },
  {
    order_id: 1,
    order_count: 1,
    product_name: "Bread",
    in_stock: true
  },
])

indices = Index.create([
  {
    product_id: 1,
    category_id: 5
  },
  {
    product_id: 1,
    category_id: 11
  },
  {
    product_id: 2,
    category_id: 4
  },
  {
    product_id: 3,
    category_id: 4
  },
])

# Category mapped to Safeway categories
categories = Category.create([
  {
    category_name: "Baby Care"
  },
  {
    category_name: "Beauty & Skincare"
  },
  {
    category_name: "Beverages"
  },
  {
    category_name: "Bread & Bakery"
  },
  {
    category_name: "Breakfast & Cereal"
  },
  {
    category_name: "Canned Goods & Soups"
  },
  {
    category_name: "Cheese"
  },
  {
    category_name: "Coffee"
  },
  {
    category_name: "Condiments, Spices & Baking"
  },
  {
    category_name: "Cookies, Snacks & Candy"
  },
  {
    category_name: "Dairy, Eggs & Cheese"
  },
  {
    category_name: "Deli"
  },
  {
    category_name: "Flowers & Floral Arrangements"
  },
  {
    category_name: "Frozen Foods"
  },
  {
    category_name: "Fruits"
  },
  {
    category_name: "Grains, Pasta & Sides"
  },
  {
    category_name: "International Cuisine"
  },
  {
    category_name: "Meat & Seafood"
  },
  {
    category_name: "Paper, Cleaning & Home"
  },
  {
    category_name: "Personal Care & Health"
  },
  {
    category_name: "Pet Care"
  },
  {
    category_name: "Poultry"
  },
  {
    category_name: "Vegetables"
  },
  {
    category_name: "Water"
  },
  {
    category_name: "Wine, Beer & Spirits"
  }
])
