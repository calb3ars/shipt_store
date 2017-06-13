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
#

class Product < ApplicationRecord
  belongs_to :order

  has_many :category_mappings

  has_many :categories,
    through: :category_mappings
    source: :category

end
