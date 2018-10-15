class Comment < ApplicationRecord
  belongs_to :comentable, polymorphic: true, optional: true
  validates :content, presence: true
  validates :author, presence: true, format: { with: /[A-ZА-Я][A-ZА-Яa-zа-я]+\s+[A-ZА-Я][A-ZА-Яa-zа-я]+\s*\.(?!.)/, message: "must contain two words(mininmum 2 symbols) and '.', each word start with capital letter" }
end
