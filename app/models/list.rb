class List < ApplicationRecord
  has_many :bookmarks

  has_many :movies, through: :bookmarks #on accède à movies via bookmarks

  validates :name, presence: true, uniqueness: true
end
