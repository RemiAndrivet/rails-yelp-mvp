class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :category, :address, presence:true
  validates :category, inclusion: {in: CATEGORY}
  has_many :reviews, dependent: :destroy
end
