class Review < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :score, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
  validates :score, numericality: { greater_than: 0, less_than: 5 }
end
