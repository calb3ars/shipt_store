class Product < ApplicationRecord
  belongs_to :order

  has_many :category_mappings

  has_many: :categories,
    through: :category_mappings
    
end
