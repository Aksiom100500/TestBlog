# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :comentable, polymorphic: true, optional: true
  has_one_attached :file, dependent: :destroy
  validates :file, attached: true, size: { less_than: 2.megabytes, message: 'file is too large' }
  validates :content, presence: true
  validates :author, presence: true, format: { with: /[A-ZА-Я][A-ZА-Яa-zа-я]+\s+[A-ZА-Я][A-ZА-Яa-zа-я]+\s*\.(?!.)/, message: "must contain two words(mininmum 2 symbols) and '.', each word start with capital letter" }
end
