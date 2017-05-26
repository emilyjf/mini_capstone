class Image < ApplicationRecord
  belongs_to :candy
  
  validates :url, presence: true
end

