class Category < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  validates :name, presence: true, format: { with: /[A-ZА-Я][a-zа-я]+\s+[A-ZА-Яa-zа-я]{2,}\s*\./, message: "must contain two words(mininmum 2 symbols) and '.', first word start with capital letter" }
end
