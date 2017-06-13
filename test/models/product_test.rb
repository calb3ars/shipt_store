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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
