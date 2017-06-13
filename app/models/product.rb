# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  order_id         :integer
#  order_count      :integer
#  category_mapping :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  product_name     :string
#  in_stock         :boolean          default("false")
#

class Product < ApplicationRecord
  belongs_to :order

  has_many :indices

  has_many :categories,
    through: :indices,
    source: :category

end
