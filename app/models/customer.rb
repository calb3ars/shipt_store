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

  attr_reader :first_name, :last_name, :order_id, :orders, :categories, :number_purchased
end
