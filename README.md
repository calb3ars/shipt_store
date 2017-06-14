* Remove category_mapping column from Product model

* john = Customer.first
john.orders[0].products[0]

Customer.find_by_sql("SELECT * FROM customers where first_name = "John")

category_id =
john.orders[0].products[0].categories[0].id

sql = "SELECT
  a.id, a.first_name, e.id, e.category_name, c.order_count

FROM customers a
  JOIN orders b ON
    a.id = b.customer_id
  JOIN products c ON
    b.id = c.order_id
  JOIN indices d ON
    c.id = d.product_id
  JOIN categories e ON
    d.category_id = e.id

WHERE
    a.first_name = 'John' AND category_name = 'Bouquets'"

step_1 = ActiveRecord::Base.connection.select_all(sql).rows[0]
