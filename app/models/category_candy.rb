class CategoryCandy < ApplicationRecord
  belongs_to :candy
  belongs_to :category
end
