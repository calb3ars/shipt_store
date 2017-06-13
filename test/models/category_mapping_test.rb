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

require 'test_helper'

class CategoryMappingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
