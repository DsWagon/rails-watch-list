class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie, dependent: :destroy # movie au singulier
  validates :comment, presence: true, length: {minimum: 6}
  validates_uniqueness_of :movie, scope: :list
end
