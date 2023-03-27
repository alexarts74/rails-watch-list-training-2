class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: true,uniqueness: true
  validates :overview, presence: true, allow_blank: false
end
