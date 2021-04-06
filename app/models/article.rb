# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :category
  has_many :comments, as: :commentable, dependent: :destroy
  validates :name, presence: true, format: { with: /[A-ZА-Я][A-ZА-Яa-zа-я]+\s+[A-ZА-Яa-zа-я]{2,}\s*\.\s*(?!.)/, message: "must contain two words(mininmum 2 symbols) and '.', first word start with capital letter" }
end
