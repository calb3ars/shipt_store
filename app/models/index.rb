class Index < ApplicationRecord
  validates :product, :category, presence:true

  belongs_to :product

  belongs_to :category
end
