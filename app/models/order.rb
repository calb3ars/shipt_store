# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  customer_id :integer          not null
#  status      :string           default("Waiting for Delivery"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ApplicationRecord
  validates :customer_id, :status, presence:true

  belongs_to :customer

  has_many :products,
    class_name: "Product",
    foreign_key: :order_id

  has_many :categories,
    through: :products,
    source: :categories

end
