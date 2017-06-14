# == Schema Information
#
# Table name: indices
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Index < ApplicationRecord
  validates :product, :category, presence:true

  belongs_to :product

  belongs_to :category
end
