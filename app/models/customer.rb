# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord
  validates :first_name, presence:true

  has_many :orders

  has_many :products,
    through: :orders,
    source: :products

  has_many :categories,
    through: :products,
    source: :categories

  def example
    self.orders.select do |order|
      order.products.product_name == "Bouquets"
    end
  end

  def order_count
    self.orders.count
  end

  def order_status(status)
    self.orders.select do |order|
      order.status == status
    end
  end

  def undelivered_orders
    self.orders.select do |order|
      order.status != "Delivered"
    end
  end

end
