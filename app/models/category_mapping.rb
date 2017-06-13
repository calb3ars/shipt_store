# == Schema Information
#
# Table name: category_mappings
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CategoryMapping < ApplicationRecord
  validates :product, :category, presence:true

  belongs_to :product

  belongs_to :category
end
