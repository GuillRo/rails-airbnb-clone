class Review < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :content, presence: true
  validates :user_id, presence: true
  validates :score, presence: true, numericality: { greater_than: 0, less_than: 6 }
end
