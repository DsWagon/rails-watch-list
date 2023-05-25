class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie # movie au singulier
  validates :comment, presence: true, length: {minimum: 6}
end
